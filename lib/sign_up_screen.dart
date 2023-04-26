import 'package:basic_app/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/signup.png",
              height: 300,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Create Your Account",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0XFF3F3D56),
                  fontWeight: FontWeight.w600,
                )),
            const Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                )),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.mail),
                  ),
                )),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                )),
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
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0XFF3F3D56),
                ),
                child: const Center(
                  child: Text(
                    "Create an Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF3F3D56)),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
