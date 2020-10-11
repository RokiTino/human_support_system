import 'package:flutter/material.dart';
void main() =>  runApp(Login_Pacient());

class Login_Pacient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: new Login_page(),
    );
  }
}
class Login_page extends StatelessWidget {
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
              Text(
                'Hello Dr.',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
              Container(
                child: RaisedButton.icon(
                onPressed: (){},
                icon: Icon(Icons.account_box,color: Colors.blue, size: 20.0,),
                label: Text(
                  'Become a member',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
                  elevation: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
