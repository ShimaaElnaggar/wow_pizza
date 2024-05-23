
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class TwitterView extends StatelessWidget {
  const TwitterView({super.key});

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialUrlRequest: URLRequest(
        url: WebUri("https://x.com/i/flow/login?redirect_after_login=%2Fnaresh_pradeep"),
      ),
    );
  }
}
