
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;

  const WebViewPage(
    this.url,
  );

  @override
  WebViewPageState createState() => WebViewPageState(
        this.url,
      );
}

class WebViewPageState extends State<WebViewPage> {
  final String url;

  WebViewPageState(
    this.url,
  );

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Expanded(
            child: WebView(
                initialUrl: url, javascriptMode: JavascriptMode.unrestricted))
      ]),
    ));
  }
}