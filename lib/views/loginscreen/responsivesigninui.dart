import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/views/loginscreen/mobile_view_signin_ui.dart';
import 'package:login/views/loginscreen/web_view_siginin.dart';

class WebViewUi extends StatefulWidget {
  const WebViewUi({super.key});

  @override
  State<WebViewUi> createState() => _WebViewUiState();
}

class _WebViewUiState extends State<WebViewUi> {
  @override
  Widget build(BuildContext context) {
    return WebViewSiginIn();
  }
}

class MobileViewUi extends StatefulWidget {
  const MobileViewUi({super.key});

  @override
  State<MobileViewUi> createState() => _MobileViewUiState();
}

class _MobileViewUiState extends State<MobileViewUi> {
  @override
  Widget build(BuildContext context) {
    return MobileViewSignin();
  }
}


class ResponsiveLoginUi extends StatefulWidget {
  const ResponsiveLoginUi({super.key});

  @override
  State<ResponsiveLoginUi> createState() => _ResponsiveLoginUiState();
}

class _ResponsiveLoginUiState extends State<ResponsiveLoginUi> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return MobileViewUi();
        } else {
          return WebViewSiginIn();
        }
      },
    );
  }
}