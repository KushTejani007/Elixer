// ignore_for_file: prefer_const_constructors

import "dart:js_interop_unsafe";

import "package:firebase_auth/firebase_auth.dart";
// import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:flutter_application_1/Pages/HomeScreen.dart";
import "package:flutter_application_1/Pages/Reuseable.dart";
import "package:flutter_application_1/Pages/SignUpScreen.dart";

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
        padding: EdgeInsets.all(30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      color: Color.fromARGB(255, 20, 20, 20),
      child: Column(
        children: <Widget>[
          logowidget("assets/images/Logo1.png"),
          const SizedBox(
                  
                  height: 15,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 15,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 15,
                ),
                firebaseUIButton(context, 'Login', (){
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                signUpOption()
        ],
      )      
      ),

    );
  }
   Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
   


}