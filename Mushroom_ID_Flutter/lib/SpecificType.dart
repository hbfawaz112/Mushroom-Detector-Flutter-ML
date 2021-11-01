import 'package:flutter/material.dart';
import 'package:mushroom_detector/Model/Mushroom.dart';

import 'BrowserPage.dart';

class SpecificType extends StatefulWidget {
    String type;
    SpecificType(String type){
      this.type=type;
    }
  @override
  _SpecificTypeState createState() => _SpecificTypeState(type);
}

class _SpecificTypeState extends State<SpecificType> {
    String type;
    String name,description,url,img1,img2,img3,img4;
    _SpecificTypeState(String type){
      this.type=type;
    }

   //Array Of Mushroom 
   Mushroom Agaricus = new Mushroom('Agaricus','Agaricus is a genus of mushrooms containing both edible and poisonous species, with possibly over 300 members worldwide. ... Members of Agaricus are characterized by having a fleshy cap or pileus, from the underside of which grow a number of radiating plates or gills, on which are produced the naked spores.','https://en.wikipedia.org/wiki/Agaricus', 'assets/images/Agaricus/1.jpg', 'assets/images/Agaricus/2.jpg', 'assets/images/Agaricus/3.jpg', 'assets/images/Agaricus/4.jpg');


   Mushroom Amanita = new Mushroom('Amanita','The genus Amanita contains about 600 species of agarics, including some of the most toxic known mushrooms found worldwide, as well as some well-regarded edible species' ,'https://en.wikipedia.org/wiki/Amanita', 'assets/images/Amanita/1.jpg', 'assets/images/Amanita/2.jpg', 'assets/images/Amanita/3.jpg', 'assets/images/Amanita/4.jpg');   
   
   Mushroom Boletus = new Mushroom('Boletus','Edibility\nThe genus Boletus contains many members which are edible such as Boletus edulis Boletus aereus and Boletus barrowsii\n\n Boletes with red pores may be toxic.','https://en.wikipedia.org/wiki/Boletus','assets/images/Boletus/1.jpg','assets/images/Boletus/2.jpg','assets/images/Boletus/3.jpg','assets/images/Boletus/4.jpg');
   
   Mushroom Cortinarius = new Mushroom('Cortinarius','Cortinarius is a globally distributed genus of mushrooms in the family Cortinariaceae. It is suspected to be the largest genus of agarics, containing over 2,000 widespread species.','https://en.wikipedia.org/wiki/Cortinarius','assets/images/Cortinarius/1.jpg','assets/images/Cortinarius/2.jpg','assets/images/Cortinarius/3.jpg','assets/images/Cortinarius/4.jpg');
   Mushroom Entoloma = new Mushroom('Entoloma','','https://en.wikipedia.org/wiki/Entoloma','assets/images/Entoloma/1.jpg','assets/images/Entoloma/2.jpg','assets/images/Entoloma/3.jpg','assets/images/Entoloma/4.jpg');
   Mushroom Hygrocybe = new Mushroom('Hygrocybe','Entoloma is a large genus of terrestrial pink-gilled mushrooms, with about 1,000 species. Most have a drab appearance, pink gills which are attached to the stem, a smooth thick cap, and angular spores. Many entolomas are saprobic but some are mycorrhizal.','https://en.wikipedia.org/wiki/Hygrocybe','assets/images/Hygrocybe/1.jpg','assets/images/Hygrocybe/2.jpg','assets/images/Hygrocybe/3.jpg','assets/images/Hygrocybe/4.jpg');
   Mushroom Lactarius = new Mushroom('Lactarius','Lactarius is a genus of mushroom-producing, ectomycorrhizal fungi, containing several edible species. The species of the genus, commonly known as milk-caps, are characterized by the milky fluid they exude when cut or damaged. Like the closely related genus Russula, their flesh has a distinctive brittle consistency','https://en.wikipedia.org/wiki/Lactarius','assets/images/Lactarius/1.jpg','assets/images/Lactarius/2.jpg','assets/images/Lactarius/3.jpg','assets/images/Lactarius/4.jpg');
   Mushroom Russula = new Mushroom('Russula','Around 750 worldwide species of ectomycorrhizal mushrooms compose the genus Russula. They are typically common, fairly large, and brightly colored – making them one of the most recognizable genera among mycologists and mushroom collectors.','https://en.wikipedia.org/wiki/Russula','assets/images/Russula/1.jpg','assets/images/Russula/2.jpg','assets/images/Russula/3.jpg','assets/images/Russula/4.jpg');
   Mushroom Suillus = new Mushroom('Suillus','Suillus is a genus of basidiomycete fungi in the family Suillaceae and order Boletales. Species in the genus are associated with trees in the pine family, and are mostly distributed in temperate locations in the Northern Hemisphere, although some species have been introduced to the Southern Hemisphere.','https://en.wikipedia.org/wiki/Suillus','assets/images/Suillus/1.jpg','assets/images/Suillus/2.jpg','assets/images/Suillus/3.jpg','assets/images/Suillus/4.jpg');

   
   
   
   
   

    @override
    void initState() {
      super.initState();
      
      
      print('HERRRRRE ${type}');
      if(type=='Agaricus'){
        name=Agaricus.name;
        description=Agaricus.description;
        url=Agaricus.wiki_url;
        img1=Agaricus.img1;
        img2=Agaricus.img2;
        img3=Agaricus.img3;
        img4=Agaricus.img4;
        print('$name - $url - $img1 - $img2 - $img3 - $img4');
      }

      if(type=='Amanita'){
        name=Amanita.name;
        description=Amanita.description;
        url=Amanita.wiki_url;
        img1=Amanita.img1;
        img2=Amanita.img2;
        img3=Amanita.img3;
        img4=Amanita.img4;
        print('$name - $url - $img1 - $img2 - $img3 - $img4');
      }

      if(type=='Cortinarius'){
        name=Cortinarius.name;
        description=Cortinarius.description;
        url=Cortinarius.wiki_url;
        img1=Cortinarius.img1;
        img2=Cortinarius.img2;
        img3=Cortinarius.img3;
        img4=Cortinarius.img4;
        print('$name - $url - $img1 - $img2 - $img3 - $img4');
      }
      

      if(type=='Entoloma'){
        name=Entoloma.name;
        description=Entoloma.description;
        url=Entoloma.wiki_url;
        img1=Entoloma.img1;
        img2=Entoloma.img2;
        img3=Entoloma.img3;
        img4=Entoloma.img4;
        print('$name - $url - $img1 - $img2 - $img3 - $img4');
      }

      if(type=='Hygrocybe'){
        name=Hygrocybe.name;
        description=Hygrocybe.description;
        url=Hygrocybe.wiki_url;
        img1=Hygrocybe.img1;
        img2=Hygrocybe.img2;
        img3=Hygrocybe.img3;
        img4=Hygrocybe.img4;
        print('$name - $url - $img1 - $img2 - $img3 - $img4');
      }
      
      if(type=='Lactarius'){
        name=Lactarius.name;
        description=Lactarius.description;
        url=Lactarius.wiki_url;
        img1=Lactarius.img1;
        img2=Lactarius.img2;
        img3=Lactarius.img3;
        img4=Lactarius.img4;
        print('$name - $url - $img1 - $img2 - $img3 - $img4');
      }
       if(type=='Russula'){
        name=Russula.name;
        description=Russula.description;
        url=Russula.wiki_url;
        img1=Russula.img1;
        img2=Russula.img2;
        img3=Russula.img3;
        img4=Russula.img4;
        print('$name - $url - $img1 - $img2 - $img3 - $img4');
      }

       if(type=='Suillus'){
        name=Suillus.name;
        description=Suillus.description;
        url=Suillus.wiki_url;
        img1=Suillus.img1;
        img2=Suillus.img2;
        img3=Suillus.img3;
        img4=Suillus.img4;
        print('$name - $url - $img1 - $img2 - $img3 - $img4');
      }
      
      
       if(type=='Boletus'){
        name=Boletus.name;
        description=Boletus.description;
        url=Boletus.wiki_url;
        img1=Boletus.img1;
        img2=Boletus.img2;
        img3=Boletus.img3;
        img4=Boletus.img4;
        print('$name - $url - $img1 - $img2 - $img3 - $img4');
      }


    }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade900,
        title: Text(
          '${name}',
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
            SizedBox(
              height: 10,
            ),
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('$img1'),
                ),
                SizedBox(
                  width: 8,
                ),
                Image(
                  image: AssetImage('$img2'),
                ),
              ],
            ),

            SizedBox(
              height: 7,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('$img3'),
                ),
                SizedBox(
                  width: 8,
                ),
                Image(
                  image: AssetImage('$img4'),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${description}",
                style: TextStyle(fontSize: 21),
              ),
            ),
            // Divider(thickness: 2,),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => WebPage('$url')),
                );
              },
              child: Card(
                elevation: 12,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'More Information',
                          style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        Text(
                          'Wikipedia',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image(
                      image: AssetImage('assets/images/3.png'),
                      width: 100,
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 3,
            ),
          ],
        ),
      ),
    );
  }
}