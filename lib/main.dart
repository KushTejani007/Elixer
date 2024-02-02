// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Pages/ListPage.dart';
import 'package:flutter_application_1/Pages/Login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
            apiKey: "AIzaSyDXwUQDkuvf8EAs4xACf7P6jIFFselPXNI",
            appId: "1:168844035351:android:9901d72cfc6a6d49386352",
            messagingSenderId: "168844035351",
            projectId: "elixer-auth",
          ),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
      /* Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                      ElevatedButton(
                        onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen(),
                      ),);}, child: Text("List")),

                      Container(
                      height: 75,
                      width: 400,
                      decoration: BoxDecoration(
                      color:Colors.black87,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.heart_broken,
                      color: Colors.white,
                      size: 30,),

                    ),
              
              
                     Container(
                      height: 75,
                      width: 500,
                      decoration: BoxDecoration(
                      color:Colors.deepPurple,
                      borderRadius: BorderRadius.circular(0)
                      ),
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.heart_broken,
                      color: Colors.white,
                      size: 30,),               
                    ),
                
                
            ],
          ),
        
        ),
        
        // backgroundColor: colors.deepPurple        
        appBar: AppBar(
          title: Text("E-Lixer"),
          foregroundColor: Colors.white,
          toolbarHeight: 70,
          elevation: 0,
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {} , icon: Icon(Icons.logout))
          ],
          
        ),
      ),*/
    );
  }
}
