
import 'package:flutter/material.dart';
import 'package:human_support_system/videocall.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(AppHSS());

class AppHSS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{},
        home: LogInPage());
  }
}

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => new _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String _email, _password;
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(
                "There hase been a problem we are working of fixing it");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              resizeToAvoidBottomPadding: false,
              body: Column(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                      onPressed: () {}),
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
                    padding:
                        EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            backgroundBlendMode: BlendMode.color,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: TextFormField(
                            onSaved: (input) => _email = input,
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
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: PasswordField(
                            color: Colors.blue,
                            hintText: "Password",
                            hasFloatingPlaceholder: true,
                            onSubmit: (input) => _password = input,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide.none),
                            backgroundColor: Colors.white24,
                            backgroundBorderRadius: BorderRadius.circular(20.0),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          alignment: Alignment(1.0, 0.0),
                          padding: EdgeInsets.only(top: 15.0, left: 20.0),
                          child: InkWell(
                            child: Text(
                              'Forgot Password ?',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue,
                            color: Colors.blueAccent,
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: signIn,
                              child: Center(
                                child: InkWell(
                                  child: Text(
                                    'Log in',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }
          return Text("Please be pasent for a minute");
        });
  }

  Future<void> signIn() async {
    //TODO Validate fields
      try{
        var user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context,MaterialPageRoute(builder: (context) => VideoCall()));
      }catch(e){
        print(e.message);
      }
    }
  }

