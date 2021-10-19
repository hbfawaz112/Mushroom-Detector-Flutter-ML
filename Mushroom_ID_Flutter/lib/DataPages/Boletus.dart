import 'package:flutter/material.dart';

class Boletus extends StatefulWidget {
  Boletus({Key  key}) : super(key: key);

  @override
  _BoletusState createState() => _BoletusState();
}

class _BoletusState extends State<Boletus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.yellow.shade900,
            title: Text(
              'Boletus',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
        ),
        body: Column(
          children: [
              SizedBox(height: 10,),
              Center(
                child: Text(
                'Some Images',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
            ),
              ),
              

          ],),
        );
  }
}