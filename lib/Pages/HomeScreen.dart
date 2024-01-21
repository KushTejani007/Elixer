import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Login.dart';
import 'package:flutter_application_1/Pages/Reuseable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    // final TextEditingController _userNameTextController = TextEditingController();
    // final TextEditingController _userNameTextController = TextEditingController();

    String username= 'kush';
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        foregroundColor: Colors.black, 
        title: Text(username)),
      body: Center(
        child: firebaseUIButton(context, 'Logout', (){
        
        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SignInScreen()));
      }))),
    );
  }
}