import 'package:basic_app/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;
  Icon passIcon = const Icon(Icons.remove_red_eye);
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
          const Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
                style: TextStyle(
                  color: Color(0XFF3F3D56),
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Username",
                  label: Text("Enter Username"),
                  prefixIcon: Icon(Icons.person),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
                style: const TextStyle(
                  color: Color(0XFF3F3D56),
                ),
                obscureText: passToggle,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Enter Password",
                    label: const Text("Enter Password"),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: InkWell(
                        onTap: () {
                          if (passToggle == true) {
                            passToggle = false;
                          } else {
                            passToggle = true;
                          }
                          setState(() {});
                        },
                        child: passToggle
                            ? const Icon(CupertinoIcons.eye_fill)
                            : const Icon(CupertinoIcons.eye_slash_fill)))),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: InkWell(
                onTap: null,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  width: 430,
                  decoration: BoxDecoration(
                    color: const Color(0XFF3F3D56),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                      child: Text("Login",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 15, color: Color(0XFF3F3D56)),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ));
                  },
                  child: const Text(
                    "Create an Account",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0XFF3F3D56),
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      )),
    );
  }
}
