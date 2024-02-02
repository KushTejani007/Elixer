import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/HomeScreen.dart';
import 'package:flutter_application_1/Pages/Reuseable.dart';
import 'package:flutter_application_1/Pages/SignUpScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    checkIfAlreadyLoggedIn();
  }

  void checkIfAlreadyLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    if (userId != null) {
      // User is already logged in, navigate to HomeScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  void loginUser() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailTextController.text,
        password: _passwordTextController.text,
      );

      // Save user id to shared preferences for persistence
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('userId', userCredential.user!.uid);

      // Navigate to HomeScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } on FirebaseAuthException catch (e) {
      print("Error: ${e.message}");
      // Handle login errors here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 20, 20, 20),
        child: Column(
          children: <Widget>[
            logowidget("assets/images/Logo1.png"),
            const SizedBox(height: 15),
            reusableTextField(
              "Enter UserName",
              Icons.person_outline,
              false,
              _emailTextController,
              Colors.teal,
            ),
            const SizedBox(height: 15),
            reusableTextField(
              "Enter Password",
              Icons.lock_outline,
              true,
              _passwordTextController,
              Colors.teal,
            ),
            const SizedBox(height: 15),
            firebaseUIButton(context, 'Login', () {
              loginUser();
            }),
            signUpOption(),
          ],
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            );
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
