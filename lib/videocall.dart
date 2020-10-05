import 'dart:math';
import 'package:flutter/material.dart';
void main() =>  runApp(VideoCall());
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
  String ActiveImg = "images/activeBtnImg.png";
  String inactiveIMg = "";
  String defaultImgPSh = "images/inactiveBtnImgpsh.png";
  String defaultDermImg = "images/inactiveBtnImgDerm.png";
  String ActiveTitle = "";
  String ActiveText = "Your own private psychiatrist, with whom you can talk peacefully.";

  void _onClick(){
    setState(() {
      ActiveText = "Your own private psychiatrist, with whom you can talk peacefully.";
      ActiveTitle = "Psychiatrist";
      ActiveImg ="images/activeBtnImg.png";
      defaultImgPSh = "images/inactiveBtnImgpsh.png";
      defaultDermImg = "images/inactiveBtnImgDerm.png";
    });
  }

  void _dermaClick(){
    setState(() {
      ActiveImg = "images/activeBtnImg.png";
      defaultDermImg = "images/inactiveBtnImgDerm.png";
      if (ActiveImg != "images/dermaActive.png"){
       ActiveImg = "images/dermaActive.png";
       ActiveTitle = "Dermatologist";
       ActiveText = "Your own private dermatologist,with whom you can check your skin problems.";
       defaultImgPSh = "images/inactiveBtnImg.png";
       defaultDermImg = "images/inactiveBtnImgpsh.png";
     }
      if (defaultDermImg == "images/inactiveBtnImg.png"){
        _onClick();
      }
    });
  }

  void _pshClick(){
    setState(() {
      ActiveImg = "images/activeBtnImg.png";
      defaultImgPSh = "images/inactiveBtnImgpsh.png";
      if(ActiveImg != "images/pshyActive.png"){
        ActiveTitle = "Psychologist";
        ActiveImg = "images/pshyActive.png";
        ActiveText = "Your own private psychologist,with whom you can talk peacefully.";
        defaultImgPSh = "images/inactiveBtnImgDerm.png";
        defaultDermImg = "images/inactiveBtnImg.png";
      }
      if(defaultImgPSh == "images/inactiveBtnImgDerm.png"){
        _dermaClick();
      }
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
                  child:
                  Container(child:
                  IconButton(
                    icon: Icon(
                        Icons.arrow_back_ios,
                        color:Colors.blue,
                        size: 30.0,
                      ), onPressed: (){},
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                  ),
                  ),
                ),
              Padding(padding: EdgeInsets.zero,child:
                  Container(
                    child:
                  IconButton(
                  icon: Icon(Icons.waves,color: Colors.blue,size: 30.0,),
                  onPressed: (){},
                  ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                ),
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
          Image.asset("$ActiveImg", alignment: Alignment.center,width: 100, height: 100),
          SizedBox(height: 5.0,),
          Text(
            '$ActiveTitle',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(padding: EdgeInsets.fromLTRB(30.0, 0.0, 20.0, 0),child:
          Container(
            alignment: Alignment.center,
            child: Text(
                        '$ActiveText',
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
                child: Image.asset('$ActiveImg',width: 50.0,height: 50.0,),
                onTap: _onClick,
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
                      child: Image.asset('$defaultImgPSh',width: 50.0,height: 50.0,),
                      onTap: _pshClick,
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
                    padding: EdgeInsets.fromLTRB(15.0, 15.0, 5.0, 5.0),
                    child:GestureDetector(
                      child: Image.asset("$defaultDermImg",width: 50.0,height: 50.0,),
                      onTap: _dermaClick,
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
//
// class WheelPainter extends CustomPainter {
//   Path getWheelPath(double wheelSize, double fromRadius, double toRadius) {
//     return new Path()
//       ..moveTo(wheelSize, wheelSize)
//       ..arcTo(Rect.fromCircle(radius: wheelSize, center: Offset(wheelSize, wheelSize)), fromRadius, toRadius, false)
//       ..close();
//   }
//
//   Paint getColoredPaint(Color color) {
//     Paint paint = Paint();
//     paint.color = color;
//     return paint;
//   }
//
//   Future<ui.Image> loadImageAsset(String assetName) async {
//     final data = await rootBundle.load(assetName);
//     return decodeImageFromList(data.buffer.asUint8List());
//   }
//   @override
//   void paint(Canvas canvas, Size size) {
//     double wheelSize = 100;
//     double nbElem = 6;
//     double radius = (2 * pi) / nbElem;
//
//     canvas.drawImage(loadImageAsset("images/activeBntImg.png"), Offset.zero, Paint());
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return oldDelegate != this;
//   }
// }