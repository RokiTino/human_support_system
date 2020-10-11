import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
void main() =>  runApp(AppHSS());

class AppHSS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String,WidgetBuilder>{
        },
        home: LogInPage()
    );
  }
}

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => new _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
            alignment: Alignment.center,
            child: Text(
              'HSS',
              style: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0,left: 20.0,right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                SizedBox(height: 20.0,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    backgroundBlendMode: BlendMode.color,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                    alignLabelWithHint: true,
                  ),
                    autovalidate: true,
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  child: PasswordField(
                    color: Colors.blue,
                    hintText: "Password",
                    hasFloatingPlaceholder: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none
                      ),
                    backgroundColor: Colors.white24,
                    backgroundBorderRadius: BorderRadius.circular(20.0),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),
                Container(
                  alignment: Alignment(1.0,0.0),
                  padding: EdgeInsets.only(top: 15.0,left: 20.0),
                  child: InkWell(
                    child: Text('Forgot Password ?',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0,),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blue,
                    color: Colors.blueAccent,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('/videocall');
                      },
                      child: Center(
                        child: InkWell(
                          child:Text(
                            'Log in',
                            style: TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
