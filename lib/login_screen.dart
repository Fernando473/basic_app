import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
          child: Column(
        children: [
          Image.asset("assets/login.png"),
          const SizedBox(
            height: 10,
          ),
          const Text("Login Here",
              style: TextStyle(
                fontSize: 30,
                color: Color(0XFF3F3D56),
                fontWeight: FontWeight.w600,
              )),
          TextField()
        ],
      )),
    );
  }
}
