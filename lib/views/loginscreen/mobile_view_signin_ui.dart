import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MobileViewSignin extends StatefulWidget {
  const MobileViewSignin({super.key});

  @override
  State<MobileViewSignin> createState() => _MobileViewSigninState();
}

class _MobileViewSigninState extends State<MobileViewSignin> {
  @override
  Widget build(BuildContext context) {
    return SigninBackgroundGlassUi();
  }
}

class SigninBackgroundGlassUi extends StatefulWidget {
  const SigninBackgroundGlassUi({super.key});

  @override
  State<SigninBackgroundGlassUi> createState() => _SigninBackgroundGlassUiState();
}

class _SigninBackgroundGlassUiState extends State<SigninBackgroundGlassUi> {
  @override
  Widget build(BuildContext context) {
    final double size=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
        height: size,
        decoration: BoxDecoration(
          color: Color(0xff7CB4B8),
        ),
        child:Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(shape: BoxShape.circle,color:Colors.red),
            )
          ],
        )
        
        ),
      ),
    );
  }
}