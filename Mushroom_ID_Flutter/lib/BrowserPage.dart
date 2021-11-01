import 'package:flutter/material.dart';
import 'package:web_browser/web_browser.dart';

class WebPage extends StatelessWidget {
 // const WebPage({Key? key}) : super(key: key);
  String url;
  WebPage(String url){
    this.url=url;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebBrowser(
          initialUrl: url,
          javascriptEnabled: true,
        ),
      ),
    );
  }
}