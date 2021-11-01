import 'package:flutter/material.dart';
import 'package:mushroom_detector/Guide.dart';

import 'Detection.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      width: 1.0
    ),
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
            'Home Screen',
            style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Image(
            image: AssetImage('assets/images/4.png'),
            width: 60,
            height: 60,
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 280,
              height: 230,
              decoration: myBoxDecoration(),
              child: TextButton(
              
                  onPressed: () {
                     Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>Detection()),
                              );
                  },
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/images/2.png'),
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        "Detection",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )
                    ],
                  )),
            ),
                
            SizedBox(
              height: 30,
            ),
            
             Container(
              width: 280,
              height: 230,
              decoration: myBoxDecoration(),
              child: TextButton(
              
                  onPressed: () {
                     Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>Guide()),
                              );
                  },
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/images/6.png'),
                        width: 140,
                        height: 140,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Guide",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )
                    ],
                  )),
            
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:  Colors.yellow.shade900,
        onPressed: (){},
        tooltip: 'pick image',
       child: Icon(Icons.face)
      ),
    );
  }
}
