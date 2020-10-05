import 'package:flutter/material.dart';
void main() =>  runApp(login_Pacient());

class login_Pacient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: new login_page(),
    );
  }
}
class login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/login_pacientBackground.png"),
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(0.0),child:
                Container(
                  child: Text(
                    'HSS',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("images/stetoscope.png",width: 50.0,height: 50.0,),
                  Container(
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.grey[600],
                      color: Colors.white60,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('');
                        },
                        child: Center(
                          child: Text(
                            'Become a member',
                            style: TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
