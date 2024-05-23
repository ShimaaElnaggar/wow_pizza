
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class FacebookView extends StatelessWidget {
  const FacebookView({super.key});

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialUrlRequest: URLRequest(
        url: WebUri("https://www.facebook.com"),
      ),
    );
  }
}
