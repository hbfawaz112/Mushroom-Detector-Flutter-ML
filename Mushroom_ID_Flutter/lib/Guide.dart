import 'package:flutter/material.dart';


import 'SpecificType.dart';

class Guide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow.shade900,
          title: Text(
            'Mushroom Guide',
            style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Image(
            image: AssetImage('assets/images/4.png'),
            width: 50,
            height: 50,
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage('assets/images/mushrooms.jpg'),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Agaricus',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
             
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow.shade900)),
                onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>SpecificType('Agaricus')),
                              );
                },
                 color: Colors.yellow.shade900,
                textColor: Colors.white,
                child: Text("Read More",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
              ],
            ),
            
            SizedBox(
              height: 100,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image(image: AssetImage('assets/images/Agaricus/1.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Agaricus/2.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Agaricus/3.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Agaricus/4.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Agaricus/5.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Agaricus/6.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),

           SizedBox(height: 10,),
           Divider(thickness: 2,),
              /*************************************************************************************** */
               SizedBox(
              height: 5,
            ),
            Row(
            
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amanita',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
             
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow.shade900)),
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>SpecificType('Amanita')),
                              );

                },
                
                 color: Colors.yellow.shade900,
                textColor: Colors.white,
                child: Text("Read More",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
              ],
            ),
            
            SizedBox(
              height: 100,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image(image: AssetImage('assets/images/Amanita/1.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Amanita/2.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Amanita/3.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Amanita/4.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Amanita/5.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Amanita/6.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),
           Divider(thickness: 2,),



            /************************************************************************************** */

             SizedBox(
              height: 5,
            ),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Boletus',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                 Container(
             
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow.shade900)),
                onPressed: () {

  Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>SpecificType('Boletus')),
                              );

                },
                 color: Colors.yellow.shade900,
                textColor: Colors.white,
                child: Text("Read More",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
              ],
            ),
           
            SizedBox(
              height: 100,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image(image: AssetImage('assets/images/Boletus/1.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Boletus/2.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Boletus/3.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Boletus/4.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Boletus/5.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
               SizedBox(height: 10,),
           Divider(thickness: 2,),

            /********************************** */
 SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cortinarius',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
               Container(
             
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow.shade900)),
                onPressed: () {
                   Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>SpecificType('Cortinarius')),
                              );
                },
                 color: Colors.yellow.shade900,
                textColor: Colors.white,
                child: Text("Read More",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
              ],
            ),
          
            SizedBox(
              height: 100,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image(image: AssetImage('assets/images/Cortinarius/1.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Cortinarius/2.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Cortinarius/3.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Cortinarius/4.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Cortinarius/5.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Cortinarius/6.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),

   SizedBox(height: 10,),
           Divider(thickness: 2,),

/************************* */
 SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Entoloma',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
             
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow.shade900)),
                onPressed: () {
                   Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>SpecificType('Entoloma')),
                              );
                },
                 color: Colors.yellow.shade900,
                textColor: Colors.white,
                child: Text("Read More",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
              ],
            ),
            
            SizedBox(
              height: 100,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image(image: AssetImage('assets/images/Entoloma/1.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Entoloma/2.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Entoloma/3.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Entoloma/4.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Entoloma/5.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Entoloma/6.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
   SizedBox(height: 10,),
           Divider(thickness: 2,),



              /********************************** */
               SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hygrocybe',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
               Container(
             
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow.shade900)),
                onPressed: () {
                   Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>SpecificType('Hygrocybe')),
                              );
                },
                 color: Colors.yellow.shade900,
                textColor: Colors.white,
                child: Text("Read More",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
              ],
            ),
            
            SizedBox(
              height: 100,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image(image: AssetImage('assets/images/Hygrocybe/1.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Hygrocybe/2.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Hygrocybe/3.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Hygrocybe/4.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Hygrocybe/5.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Hygrocybe/6.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),

   SizedBox(height: 10,),
           Divider(thickness: 2,),


             SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lactarius',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                 Container(
             
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow.shade900)),
                onPressed: () {
                   Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>SpecificType('Lactarius')),
                              );
                },
                 color: Colors.yellow.shade900,
                textColor: Colors.white,
                child: Text("Read More",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
              ],
            ),
          
            SizedBox(
              height: 100,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image(image: AssetImage('assets/images/Lactarius/1.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Lactarius/2.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Lactarius/3.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Lactarius/4.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Lactarius/5.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Lactarius/6.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
   SizedBox(height: 10,),
           Divider(thickness: 2,),


       SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Russula',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                 Container(
             
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow.shade900)),
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>SpecificType('Russula')),
                              );
                },
                 color: Colors.yellow.shade900,
                textColor: Colors.white,
                child: Text("Read More",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
              ],
            ),
           
            SizedBox(
              height: 100,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image(image: AssetImage('assets/images/Russula/1.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Russula/2.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Russula/3.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Russula/4.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Russula/5.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Russula/6.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),


           SizedBox(height: 10,),
           Divider(thickness: 2,),





             SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Suillus',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                 Container(
             
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow.shade900)),
                onPressed: () {
                   Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>SpecificType('Suillus')),
                              );
                },
                 color: Colors.yellow.shade900,
                textColor: Colors.white,
                child: Text("Read More",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
              ],
            ),
           
            SizedBox(
              height: 100,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image(image: AssetImage('assets/images/Suillus/1.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Suillus/2.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Suillus/3.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Suillus/4.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Suillus/5.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                  Image(image: AssetImage('assets/images/Suillus/6.jpg')),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
   SizedBox(height: 10,),
           Divider(thickness: 2,),


          SizedBox(height: 10,),
       


          ],
        ),
      ),
    );
  }
}
