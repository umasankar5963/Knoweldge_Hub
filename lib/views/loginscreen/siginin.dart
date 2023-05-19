
import 'package:flutter/material.dart';
import 'package:login/views/screens/home.dart';
import 'package:login/views/loginscreen/siginup.dart';
import 'package:login/views/widgets/appbar.dart';

import '../screens/mocktestscreen/exam_screen.dart';

class SiginIn extends StatefulWidget {
  const SiginIn({super.key});

  @override
  State<SiginIn> createState() => _SiginInState();
}

class _SiginInState extends State<SiginIn> {
  final _formKey = GlobalKey<FormState>();
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appLogo(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(),
              TextFormField(
                 key: const ValueKey('EnterEmail'),
                 decoration: const InputDecoration(
                 hintText: "Email",
                ),
                // validator: (val) {
                //   return val!.isEmpty ? "Enter Email id" : null;
                // },
                  onChanged: (value) {
                  email = value;
                },
              ),
               const SizedBox(
                height: 6,
              ),
              TextFormField(
                    key: const ValueKey('EnterPassword'),
                decoration:  const InputDecoration(
                  hintText: "Password",
                ),
                validator: (val) {
                  return val!.isEmpty ? "Enter Password" : null;
                },
                onChanged: (value) {
                  email = value;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                  key: const ValueKey('button'),
                onTap: () {
               Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => ExamStart()));//Home
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  width: MediaQuery.of(context).size.width - 48,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    "Sigin in",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have any account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  GestureDetector(
                   onTap: () {
                   Navigator.pushReplacement(context,
                   MaterialPageRoute(builder: (context) => SingnUp()));
                    },
                    child: const Text( "SingnUp", style: TextStyle(fontSize: 16, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}





