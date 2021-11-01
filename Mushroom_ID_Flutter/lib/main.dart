import 'package:mushroom_detector/HomeScreen.dart';
import 'package:splashscreen/splashscreen.dart';


import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  var testtheme=new ThemeData.dark();
    
  @override
  Widget build(BuildContext context) {
    var themecolor=Color(0xFF112734);

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
       
      home:new Theme(
          data: new ThemeData(
            primaryColor: themecolor,
            accentColor: Colors.green,
            textTheme: TextTheme(body1: TextStyle(color: Colors.black)),
            backgroundColor: themecolor,
          )
          ,
       child: 

       SplashScreen(
            seconds: 14,
            navigateAfterSeconds: new  Home(),
            
            title: Text('  Mushroom ID ',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic
              ),
            ) ,
            loadingText: Text('Detector And Guide ',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
              ),
            ) ,
            image: Image.asset("assets/images/2.png"),
            //backgroundGradient: new LinearGradient(colors: [Colors.cyan, Colors.blue], begin: Alignment.topLeft, end: Alignment.bottomRight),
            backgroundColor: Colors.yellow.shade900,
           // styleTextUnderTheLoader: new TextStyle(),
            photoSize: 180.0,
            onClick: ()=>print("splashh"),
            //loaderColor: Colors.red,
          ),
          
     
      
    )
    );
  }
}