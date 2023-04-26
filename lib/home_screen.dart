import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
          backgroundColor: const Color(0XFF3F3D56),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.logout, size: 30),
            ),
          ],
        ),
        body: const Center(
          child: Text("Welcome to Home Screen"),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: "Contacts",
              tooltip: AutofillHints.birthday),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ])));
  }
}
