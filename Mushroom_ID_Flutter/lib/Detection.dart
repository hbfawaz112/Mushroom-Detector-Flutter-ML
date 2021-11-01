import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mushroom_detector/SpecificType.dart';
import 'package:tflite/tflite.dart';

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

  bool _loading;
  File _image;
  List _outputs;
  String predicted_type;
  final _imagePicker = ImagePicker();

  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    await Tflite.loadModel(
        model: "assets/model_unquant.tflite", labels: "assets/labels.txt");
  }

  pickImageCamera() async {
    var image = await _imagePicker.getImage(source: ImageSource.camera);
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = File(image.path);
    });
    classifyImage(_image);
  }

  pickImageGallery() async {
    var image = await _imagePicker.getImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = File(image.path);
    });
    classifyImage(_image);
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 2,
        threshold: 0.5,
        imageMean: 127.5,
        imageStd: 127.5);

    setState(() {
      _loading = false;
      _outputs = output;
      predicted_type = _outputs[0]["label"];
      predicted_type = predicted_type.substring(1);
      predicted_type = predicted_type.substring(1);
      
      print('predicted_typeeeeeeeeeeeeeeeeee is  ${predicted_type}');
    });
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 22,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        pickImageCamera();
                      },
                      child: Image(
                        image: AssetImage('assets/images/5.png'),
                        width: 70,
                        height: 70,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    InkWell(
                      onTap: () {
                        pickImageGallery();
                      },
                      child: Image(
                        image: AssetImage('assets/images/9.png'),
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Choose image source',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black38),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1,
                color: Colors.black87,
              ),
              SizedBox(
                height: 13,
              ),
              _loading
                  ? Container(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(),
                    )
                  : Container(
                      //width: MediaQuery.of(context).size.width,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _image == null
                              ? Container()
                              : Column(
                                  children: [
                                    Text(
                                      'Detected Image',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      child: Image.file(_image),
                                    ),
                                  ],
                                ),
                          SizedBox(
                            height: 16,
                          ),
                          _outputs != null?
                          InkWell(
                            onTap: (){
                                  Navigator.push(context, new MaterialPageRoute(
                                builder: (context) =>SpecificType(predicted_type)),
                                );
                            },
                            child: Card(
                  elevation: 12,
                  child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Predicted Mushroom ',
                                style: TextStyle(
                                    fontSize: 29,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                    ),
                              ),
                             Text(
                                          "${_outputs[0]["label"]}"
                                              .replaceAll(RegExp(r'[0-9]'), ''),
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 33.0,
                                              background: Paint()
                                                ..color = Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )			
			
                            ],
                        ),
                        SizedBox(
                            width: 15,
                        ),
                        Image(
                            image: AssetImage('assets/images/7.png'),
                            width: 70,
                            height: 70,
                        )
                      ],
                    ),
                  ),
                          )
                
                                                
                              : Column(
                                  children: [
                                    Text(
                                      "Waiting To Choose The Image",
                                      style: TextStyle(
                                        fontSize: 29.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image(
                                      image: AssetImage(
                                          'assets/images/image_waiting.PNG'),
                                      width: 270,
                                      height: 270,
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ),
            ],
          ),
        ));
  }
}
