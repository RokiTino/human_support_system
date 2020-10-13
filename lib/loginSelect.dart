import 'package:flutter/material.dart';
import 'package:human_support_system/Login.dart';

void main() => runApp(loginSelect());
class LoginSelect extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginSelect> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO Navigator to move me to Email Login screen
      home: loginSelect(),
    );
  }
}

class loginSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            child: RaisedButton.icon(
                onPressed: goEmail,
                icon: Icon(
              Icons.email,
              color: Colors.blueAccent,
                  size: 20.0,
            ),
              label: Text(
                "Email Login",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.0,),
          Container(
            child: RaisedButton(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                  child: Image.asset("images/googleIcon.png"),
                ),
                  Text("Google LogIn",style: TextStyle(color: Colors.blue,fontSize: 20.0,fontStyle: FontStyle.italic),),
    ],
              ),
              onPressed: (){},
            ),
          ),
          Container(
            child: RaisedButton(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    child: Image.asset("images/appleIcon.png"),
                  ),
                  Text("Apple LogIn",style: TextStyle(color: Colors.blue,fontSize: 20.0,fontStyle: FontStyle.italic),),
                ],
              ),
              onPressed: (){},
            ),
          ),

          Container(
            child: RaisedButton(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    child: Image.asset("images/facebookIcon.png"),
                  ),
                  Text("Facebook LogIn",style: TextStyle(color: Colors.blue,fontSize: 20.0,fontStyle: FontStyle.italic),),
                ],
              ),
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }
  void goEmail(){
    Navigator.push(context,MaterialPageRoute(builder: (context) => AppHSS()));
  }
}
