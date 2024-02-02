// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Login.dart';
import 'package:flutter_application_1/Pages/Reuseable.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 20, 20, 20),
        body: ListView(
          children: [
            Center(
              child: firebaseUIButton(context, 'Logout', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()));
              }),
            ),
            Center(
              child: SingleChildScrollView(
                child: Container(
                  height: 170,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
