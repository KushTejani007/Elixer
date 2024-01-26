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
// commit 2 test
    String username= 'kush';
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
                  ElevatedButton(onPressed: () {},style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(const Size(130, 60)), 
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 20, 20, 20)), 
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder( borderRadius: BorderRadius.circular(20))
                    )
                  ), child:const Text('Maps'),),

                  ElevatedButton(onPressed: () {},style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(const Size(130, 60)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.teal), // Set the background color
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