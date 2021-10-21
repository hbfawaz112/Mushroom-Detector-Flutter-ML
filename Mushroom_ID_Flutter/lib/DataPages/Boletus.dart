import 'package:flutter/material.dart';

import '../BrowserPage.dart';

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
        body: SingleChildScrollView(
          child: Column(
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
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                   Image(
                      image: AssetImage('assets/images/Boletus1.jpg'),
                     
                    ),
                    SizedBox(width: 8,),
                    
                     Image(
                      image: AssetImage('assets/images/Boletus2.jpg'),
                    
                    ),
                ],),

                SizedBox(height: 7,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                   Image(
                      image: AssetImage('assets/images/Boletus3.jpg'),
                      
                    ),
                    SizedBox(width: 8,),

                     Image(
                      image: AssetImage('assets/images/Boletus4.jpg'),
                     
                    ),
                ],),
                 SizedBox(height: 12,),
                Divider(thickness: 2,),
                Text('Edibility\nThe genus Boletus contains many members which are edible, such as Boletus edulis, Boletus aereus and Boletus barrowsii\n \n Boletes with red pores may be toxic.',
                style: TextStyle(fontSize: 25),
                ),
                 // Divider(thickness: 2,),

                  InkWell(
                    onTap: (){
                       Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>WebPage('https://en.wikipedia.org/wiki/Boletus#:~:text=Boletus%20is%20a%20genus%20of,fungi%2C%20comprising%20over%20100%20species.&text=Most%20boletes%20have%20been%20found,of%20certain%20kinds%20of%20plants.')),
                              );
                    },
                    child: Card(
                      elevation: 12,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('More Information' , style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color: Colors.black54),),
                              Text('Wikipedia' , style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.black54),),
                              
                            ],
                          ),
                          SizedBox(width: 15,),
                     Image(
                        image: AssetImage('assets/images/3.png'),
                       width: 100,
                       height: 100,
                      )
                        ],
                      ),
                    ),
                  ),
                  Divider(thickness: 3,),


            ],),
        ),
        );
  }
}
