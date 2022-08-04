import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

////////// todo: move to new file
// from: https://medium.com/@yugandhar0189/flutter-ios-android-customize-the-ui-inside-the-webview-e72fbe51dd44
// // alternative: https://blog.mindorks.com/using-webviews-in-flutter-tutorial

class WebViewContainer extends StatefulWidget {
  final url;
  final title = 'placeholder';
  WebViewContainer(this.url); // this.title
  @override
  createState() => _WebViewContainerState(this.url, this.title);
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  var _title;
  final _key = UniqueKey();
  final Completer<WebViewController> _controller = Completer<WebViewController>();
  WebViewController? _myController;

  _WebViewContainerState(this._url, this._title);
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Expanded(
          child: WebView(
            key: _key,
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: _url,
            onWebViewCreated: (WebViewController controller) {
              _controller.complete(controller);
              _myController = controller;
              // don't display these elements
              _myController?.evaluateJavascript("document.getElementsByClassName(\"header_logo header_logo_image\")[0].style.display=\"none\";");
              _myController?.evaluateJavascript("document.getElementsByClassName(\"btn-navbar\")[0].style.display=\"none\";");
            },
            onPageFinished: (String url){
              print('Page finished loading: $url');
            },
          ),
        ),
      ],
    );
  }
}