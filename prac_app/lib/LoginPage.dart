import 'package:flutter/material.dart';
import './Camera.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  final nameController = TextEditingController();
  final password = TextEditingController();
  String pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('LoginApp'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: Text('Rajneesh', style: TextStyle(color:Colors.lightGreen, fontWeight: FontWeight.w500, fontSize:30)),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: password,
                onSubmitted:(password)=>pass = password,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),

            ),
            FlatButton(
              onPressed: (){
                //fogot password sceen
              },
              textColor: Colors.blue,
              child: Text('Forgot Password ?'),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Login'),
                onPressed: () {
                  if(nameController.text=="rajneesh" && pass=="rajneesh"){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Camera()),
                    );
                  }
                  else{
                    return showDialog(
                      context: context,
                      builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the that user has entered by using the
                        // TextEditingController.
                        content: Text("Either password or Username is wrong!"),
                      );
                    },
                  );
                }
                  print(nameController.text);
                  print(password.text);
                  print(pass);
                },)
            ),
            Container(
              child: Row(
                children: [
                  Text('Does not have an account ?'),
                  FlatButton(
                    textColor: Colors.orange,
                    child : Text('sign in', style: TextStyle(fontSize: 20)),
                    onPressed: (){},//signup screen,
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        )
      )
    );
  }
}