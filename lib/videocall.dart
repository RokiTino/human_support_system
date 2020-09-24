import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VideoCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
    home: new VideoCallPage(),
    );
  }
}

class VideoCallPage extends StatefulWidget {
  @override
  _VideCallState createState() => _VideCallState();
}

class _VideCallState extends State<VideoCallPage> {


  void _onClick(){
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: PreferredSize(
        child: SafeArea(
        child: Container(
          child: Stack (
            children: <Widget>[
              Container(
                height: size.height*0.9,
                decoration: BoxDecoration(
                  //color:Colors.blueAccent,
                  image: DecorationImage(
                    image: AssetImage("images/background.jpg"),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90.0),
                    bottomRight: Radius.circular(90.0)
                  )
                ),

              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(padding: EdgeInsets.zero,
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color:Colors.blue,
                      size: 30.0,
                    ), onPressed: (){},
                    elevation: 2,
                    backgroundColor: Colors.white,
                    mini: true,
                  ),
                ),
              Padding(padding: EdgeInsets.zero,child: FloatingActionButton(child: Icon(
                Icons.waves,
                color:Colors.blue,
                size: 20.0,
              ), onPressed: (){},
                backgroundColor:Colors.white,
                mini: true,),
              ),

          ],
            ),
          ],
          ),
        ),
      ),
        preferredSize: Size.fromHeight(150),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/activeBtnImg.png", alignment: Alignment.center,width: 100, height: 100),
          SizedBox(height: 5.0,),
          Text(
            'Psychiatrist',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(padding: EdgeInsets.fromLTRB(30.0, 0.0, 20.0, 0),child:
          Container(
            alignment: Alignment.center,
            child: Text(
                        'Your privat psychiatrist, with whom you can talk peacefully.',
                        style: TextStyle(
                        color: Colors.blueAccent,
                        ),
                ),
              ),
          ),
       SizedBox(height: 2.0,),
       Text(
         'Make a video call',
         style: TextStyle(
           color: Colors.blueAccent,
           fontSize: 15.0,
           fontWeight: FontWeight.bold
         ),
       ),
      Image.asset('images/Polygon 1.png',width: 140.0,height: 140.0,),
          Material(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(850.0),
                bottomRight: Radius.circular(850.0)
            ),
            shadowColor: Colors.grey,
            color: Colors.white,
            elevation: 7.0,
            child:
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 20.0),
              child:GestureDetector(
                child: Image.asset('images/activeBtnImg.png',width: 50.0,height: 50.0,),
                onTap: (){},
              ),
            ),
          ),
            Row(
              verticalDirection: VerticalDirection.down,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                Material(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(850.0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(850.0),
                  ),
                  shadowColor: Colors.grey,
                  color: Colors.white,
                  elevation: 5.0,
                  child:
                  Padding(
                    padding: EdgeInsets.fromLTRB(5.0, 15.0, 15.0, 0.0),
                    child:GestureDetector(
                      child: Image.asset('images/inactiveBtnImgpsh.png',width: 50.0,height: 50.0,),
                      onTap: (){},
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(850.0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(850.0),
                      bottomRight: Radius.circular(0),
                  ),
                  shadowColor: Colors.grey,
                  color: Colors.white,
                  elevation: 5.0,
                  child:
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 15.0, 5.0, 0.0),
                    child:GestureDetector(
                      child: Image.asset('images/inactiveBtnImgDerm.png',width: 50.0,height: 50.0,),
                      onTap: (){},
                    ),
                  ),
                ),
              ],
            ),

        ],
      ),
    );
  }
}

