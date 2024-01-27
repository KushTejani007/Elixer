import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/ListPage.dart';
import 'package:flutter_application_1/Pages/Login.dart';
import 'package:flutter_application_1/Pages/Reuseable.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:http/http.dart' as http;

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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(115), // Set the height here
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0, // Remove shadow
    // title: Text('Your Title'),
          centerTitle: true,
          bottom: PreferredSize(
      preferredSize: const Size.fromHeight(0), // Hide the existing bottom
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
             width: 300,
              height: 70,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal,                      
              ),
                            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {},style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(const Size(130, 60)), 
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 20, 20, 20)), // Set the background color
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder( borderRadius: BorderRadius.circular(20))
                    )
                  ), child:const Text('Maps'),),

                  ElevatedButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ListPage()), );

                  },style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(const Size(130, 60)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),                     // Set the background color
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder( borderRadius: BorderRadius.circular(20))
                    )
                  ), child:const Text('List'),),

                ],
              ),
// Example color, replace with your desired color
          ),
        ],
      ),
    ),
  ),
),

      bottomNavigationBar:const GNav(
          tabBackgroundColor: Color.fromARGB(255, 20, 20, 20),
          tabBorderRadius: 20,
          tabMargin: EdgeInsets.all(10),
          backgroundColor: Colors.teal,
          activeColor: Colors.white,
          color: Colors.white,
          gap: 5,
        tabs:[
          GButton(
          icon: Icons.home,
          // iconColor: Colors.white,
          iconSize: 25,
          text: 'Home',),
          GButton(
          icon: Icons.wallet,
          // iconColor: Colors.white,
          iconSize: 25,
          text: 'Wallet',),
          GButton(
          icon: Icons.menu,
          // iconColor: Colors.white,
          iconSize: 25,
          text: 'Others',)]) ,
          
      
      ),
    );
  }
}