import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage>{
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
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
//                  print(nameController.text);
//                  print(passwordController.text);
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