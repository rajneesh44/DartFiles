import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './login_screen.dart';

class SignupScreen extends StatefulWidget{

  static const routeName = '/signup';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>{

  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();
  void _submit(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
        actions: [
          FlatButton(
            child: Row(
              children: [
                Text('Login'),
                Icon(Icons.person)
              ],
            ),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors:[
                      Colors.limeAccent,
                      Colors.yellow,
                    ]
                )
            ),
          ),
          Center(
            child: Card(
              shape : RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 300,
                width: 300,
                padding: EdgeInsets.all(16.0),
                child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                              decoration: InputDecoration(labelText: 'Email'),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value)
                              {
                                if(value.isEmpty || !value.contains('@'))
                                {return 'invalid email';}
                                return null;
                              },
                              onSaved: (value){

                              }
                          ),
                          TextFormField(
                              decoration: InputDecoration(labelText: 'Password'),
                              obscureText: true,
                              controller: _passwordController,
                              validator: (value){
                                if(value.isEmpty || value.length<5){
                                  return 'invalid password';
                                }
                                return null;
                              },
                              onSaved: (value){

                              }
                          ),
                          TextFormField(
                              decoration: InputDecoration(labelText: 'Confirm Password'),
                              obscureText: true,
                              validator: (value){
                                if(value.isEmpty || value!= _passwordController.text){
                                  return 'invalid password';
                                }
                                return null;
                              },
                              onSaved: (value){

                              }
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          RaisedButton(
                            child: Text('submit'),
                            onPressed: (){
                              _submit();
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.blue,
                            textColor: Colors.white,
                          )
                        ],
                      ),
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}