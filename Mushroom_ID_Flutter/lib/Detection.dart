import 'package:flutter/material.dart';

import 'DataPages/Boletus.dart';

class Detection extends StatefulWidget {
  Detection({Key key}) : super(key: key);

  @override
  _DetectionState createState() => _DetectionState();
}

class _DetectionState extends State<Detection> {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(width: 1.0),
      borderRadius: BorderRadius.all(
          Radius.circular(80.0) //                 <--- border radius here
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.yellow.shade900,
            title: Text(
              'Detection',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            leading: Image(
              image: AssetImage('assets/images/2.png'),
              width: 60,
              height: 60,
            )),
        body: Column(
          children: [
            SizedBox(
              height: 22,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/5.png'),
                    width: 70,
                    height: 70,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Image(
                    image: AssetImage('assets/images/9.png'),
                    width: 70,
                    height: 70,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Choose image source',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black38),
            ),
            SizedBox(height: 20,),
           Divider(thickness:1  , color: Colors.black87,),
          SizedBox(height: 13,),
            Text(
              'Detected Image',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black87),
            ),
              SizedBox(height: 10,),
              Image(
                    image: AssetImage('assets/images/m.jpg'),
                    width: 300,
                    height: 250,
                  ),
          SizedBox(height: 5,),
              Text(
              'Detictions are :',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.black87),
            ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Boletus ---------- 90%',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.black),
              ),
              InkWell(
                onTap: (){
                   Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => Boletus()),
                              );
                },
                child: Image(
                      image: AssetImage('assets/images/7.png'),
                      width: 60,
                      height: 60,
                    ),
              ),
            ],),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Amanita ---------- 10%',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.black),
              ),
              Image(
                    image: AssetImage('assets/images/7.png'),
                    width: 60,
                    height: 60,
                  ),
            ],),

    Divider(thickness:1  , color: Colors.black87,),
       
           
           

          ],
        ));
  }
}
