import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/custom_dialog.dart';
import 'package:tic_tac_toe/game_button.dart';
import './game_button.dart';
import './custom_dialog.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GameButton> buttonsList;
  var player1, player2, activePlayer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buttonsList = doInit();
  }

  List<GameButton> doInit(){
    player1 = List();
    player2 = List();
    activePlayer = 1;

    var gameButtons  = <GameButton>[
      new GameButton(id: 1),
      new GameButton(id: 2),
      new GameButton(id: 3),
      new GameButton(id: 4),
      new GameButton(id: 5),
      new GameButton(id: 6),
      new GameButton(id: 7),
      new GameButton(id: 8),
      new GameButton(id: 9),
    ];
    return gameButtons;
  }

  void playGame(GameButton gb){
    setState(() {
      if(activePlayer==1){
        gb.text = 'X';
        gb.bg = Colors.red ;
        activePlayer = 2;
        player1.add(gb.id);
      }else{
        gb.text = '0';
        gb.bg = Colors.black;
        activePlayer = 1;
        player2.add(gb.id);
      }
    gb.enabled = false ;
    int winner  = checkWinner();
    if(winner==-1)
        if(buttonsList.every((p) => p.text!="")) { // check if all ids are filled
          showDialog(
              context: context,
              builder: (_) =>
                  CustomDialog(
                      "Game Tied", "Press the reset button", resetGame));
        }else{
          activePlayer==2 ? autoPlay() : null ;
        }
    });
  }

  void autoPlay(){
    var emptyCells = List();
    var list = List.generate(9, (i)=>i+1);
    for (var cellID in list){
      if(!(player1.contains(cellID) || player2.contains(cellID))){
        emptyCells.add(cellID);
      }
    }
    var r  = Random();
    var randIndex = r.nextInt(emptyCells.length-1);
    var cellID = emptyCells[randIndex];
    int i = buttonsList.indexWhere((p) => p.id==cellID);
    playGame(buttonsList[i]);
  }

  int checkWinner(){
    var winner = -1;
    if((player1.contains(1) && player1.contains(2) && player1.contains(3) )||
        (player1.contains(7) && player1.contains(8) && player1.contains(9) ) ||
        (player1.contains(4) && player1.contains(5) && player1.contains(6) )||
        (player1.contains(1) && player1.contains(4) && player1.contains(7) ) ||
        (player1.contains(2) && player1.contains(5) && player1.contains(8) ) ||
        (player1.contains(3) && player1.contains(6) && player1.contains(9) ) ||
        (player1.contains(1) && player1.contains(5) && player1.contains(9) )||
        (player1.contains(3) && player1.contains(7) && player1.contains(5) ))
      winner = 1;

    if((player2.contains(1) && player2.contains(2) && player2.contains(3) )||
        (player2.contains(7) && player2.contains(8) && player2.contains(9) ) ||
        (player2.contains(4) && player2.contains(5) && player2.contains(6) )||
        (player2.contains(1) && player2.contains(4) && player2.contains(7) ) ||
        (player2.contains(2) && player2.contains(5) && player2.contains(8) ) ||
        (player2.contains(3) && player2.contains(6) && player2.contains(9) ) ||
        (player2.contains(1) && player2.contains(5) && player2.contains(9) )||
        (player2.contains(3) && player2.contains(7) && player2.contains(5) ))
      winner  = 2;
    if(winner!=-1){
      if(winner==1){
          showDialog(
            context : context,
            builder : (_)=> CustomDialog("Player 1 Won",
                "Press the reset button to start again", resetGame)
          );
      }else{
        showDialog(
            context : context,
            builder : (_)=> CustomDialog("Player 2 Won",
                "Press the reset button to start again", resetGame)
        );
      }
    }
    return winner;
  }

  void resetGame(){
    if(Navigator.canPop(context)) Navigator.pop(context);
    setState(() {
      buttonsList = doInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 120.0,
              child: DrawerHeader(
                child : Text('Play Game'),
                decoration : BoxDecoration(color: Colors.orange),
              ),),
              ListTile(title: Text('Item 1'),),
              ListTile(title: Text('Item 2'),),
              ],
          ),
        ),
        body : Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Expanded(
            child : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 9.0,
                mainAxisSpacing: 9.0,
              ),
              padding: EdgeInsets.all(10.0),
              itemCount: buttonsList.length,
              itemBuilder: (context, i)=> SizedBox(
                width: 100.0,
                height: 100.0,
                child: RaisedButton(
                  padding: EdgeInsets.all(8.0),
                  onPressed: buttonsList[i].enabled ? ()=> playGame(buttonsList[i]) : null ,
                  child: Text(buttonsList[i].text,
                      style: TextStyle(
                          color: Colors.white, fontSize: 20.0
                      )),
                  color: buttonsList[i].bg,
                  disabledColor: buttonsList[i].bg,
                ),
              ),
            ),
            ),
          RaisedButton(
            child: Text('Reset', style: TextStyle(color: Colors.white, fontSize: 20.0)),
              color: Colors.red,
              padding: const EdgeInsets.all(20.0),
              onPressed: resetGame,
          )],
          ),
    );
  }
}
