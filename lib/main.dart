import 'package:flutter/material.dart';
import 'package:login/views/loginscreen/web_view_siginin.dart';
import 'package:login/views/screens/mocktestscreen/mock_test_instruction_screen.dart';
import 'package:provider/provider.dart';

import 'views/loginscreen/responsivesigninui.dart';

void main() {
  runApp(
        ChangeNotifierProvider(
          create: (_) => InstructionsLanguage(),
          child: MyApp(),
        ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     title: 'Flutter Demo',
      home: ResponsiveLoginUi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
