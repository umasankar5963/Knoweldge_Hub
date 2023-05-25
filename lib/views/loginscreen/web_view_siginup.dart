import 'package:flutter/material.dart';

import 'package:login/views/widgets/appbar.dart';

import 'web_view_siginin.dart';

class WebViewSingnUp extends StatefulWidget {
  const WebViewSingnUp({super.key});

  @override
  State<WebViewSingnUp> createState() => _WebViewSingnUpState();
}

class _WebViewSingnUpState extends State<WebViewSingnUp> {
  final _formKey = GlobalKey<FormState>();
  late String name, email, password;
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
                decoration: const InputDecoration(
                  hintText: "Name",
                ),
                validator: (val) {
                  return val!.isEmpty ? "Enter Name" : null;
                },
                onChanged: (value) {
                  email = value;
                },
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
                validator: (val) {
                  return val!.isEmpty ? "Enter Email id" : null;
                },
                onChanged: (value) {
                  name = value;
                },
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                decoration: const InputDecoration(
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
                onTap: () {},
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  width: MediaQuery.of(context).size.width - 48,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    "SiginUp",
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
                    "already have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => WebViewSiginIn()));
                    },
                    child: const Text(
                      "SingnIn",
                      style: TextStyle(
                          fontSize: 16, decoration: TextDecoration.underline),
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
