import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class webview extends StatelessWidget {
  const webview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Webview Demo"),
      ),
      body: WebView(
        initialUrl: "https://web.whatsapp.com/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
