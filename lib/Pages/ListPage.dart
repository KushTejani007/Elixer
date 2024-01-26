// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_application_1/Pages/HomeScreen.dart";
import "package:flutter_application_1/Pages/Login.dart";
import "package:flutter_application_1/Pages/Reuseable.dart";

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      
        
      body: Column(

        children: [
          //Toggle
          Center(
            
            child: Container(
              width: 300,
              height: 70,
              margin: const EdgeInsets.only(top:35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal,                      
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()), );

                  },style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(const Size(130, 60)), 
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder( borderRadius: BorderRadius.circular(20))
                    )
                  ), child:const Text('Maps'),),

                  ElevatedButton(onPressed: () {},style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(const Size(130, 60)),
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 20, 20, 20)), // Set the background color
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder( borderRadius: BorderRadius.circular(20))
                    )
                  ), child:const Text('List'),),

                ],
              ),
              // child: firebaseUIButton(context, 'Map', () {}),
            ),
          ),
        
          Center(
            
            child: firebaseUIButton(context, 'Logout', (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SignInScreen()));
            }),
          )
        ],
      )
      
      ),
    );
  }
}