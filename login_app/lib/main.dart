import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/login_screen.dart';
import './screens/signup_screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'LoginApp',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home:LoginScreen(),
      routes: {
        SignupScreen.routeName: (ctx)=> SignupScreen(),
        LoginScreen.routeName : (ctx) => LoginScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
      },
    );
  }
}