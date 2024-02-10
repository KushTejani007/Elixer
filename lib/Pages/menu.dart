// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/HomeScreen.dart';
import 'package:flutter_application_1/Pages/Wallet.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:page_transition/page_transition.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});
  

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes: {
        '/second': (context) => HomeScreen(),
        // Add more routes if needed
      },
      // resizeToAvoidBottomInset: false,
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 100,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text('Menu'),
          backgroundColor: Colors.teal,
        ),
        body: 
ListView(
  children: [
    buildClickableContainerWithLogo(context,Icons.home, 'Home', HomeScreen()),
    buildClickableContainerWithLogo(context,Icons.home, 'Home', HomeScreen()),
    buildClickableContainerWithLogo(context,Icons.home, 'Home', HomeScreen()),
    buildClickableContainerWithLogo(context,Icons.home, 'Home', HomeScreen()),
    buildClickableContainerWithLogo(context,Icons.home, 'Home', HomeScreen()),
    buildClickableContainerWithLogo(context,Icons.home, 'Home',HomeScreen()),
    buildClickableContainerWithLogo(context,Icons.home, 'Home',HomeScreen()),
    buildClickableContainerWithLogo(context,Icons.home, 'Home',HomeScreen()),
    buildClickableContainerWithLogo(context,Icons.home, 'Home',HomeScreen()),

  ],
),


        bottomNavigationBar: GNav(
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
            _navigateToPage(index);
          },
          tabBackgroundColor: const Color.fromARGB(250, 20, 20, 20),
          tabBorderRadius: 20,
          tabMargin: const EdgeInsets.all(10),
          backgroundColor: Colors.teal,
          activeColor: Colors.white,
          color: Colors.white,
          gap: 5,
          tabs: const [
            GButton(
              icon: Icons.home,
              iconSize: 25,
              text: 'Home',
            ),
            GButton(
              icon: Icons.wallet,
              iconSize: 25,
              text: 'Wallet',
            ),
            GButton(
              icon: Icons.menu,
              iconSize: 25,
              text: 'Menu',
            ),
          ],
        ),
      ),    );
  }

  GestureDetector buildClickableContainerWithLogo(BuildContext context, IconData icon, String text, Widget screen) {
  return GestureDetector(
    onTap: () {
      // Handle the onTap event here
      print('Container clicked: $text');
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
    },
    child: Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 17, 17, 17), // Charcoal grey color
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              icon,
              size: 60, // Adjust size as needed
              color: Colors.white,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    ),
  );
}

  void _navigateToPage(int index) {
    switch (index) {
      case 0:
        // Navigate to Home page
        // If Home page is another widget, replace MaterialPageRoute with your desired route.
        Navigator.push(
            context,
            PageTransition(
                child: const HomeScreen(), type: PageTransitionType.fade)
            // MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
        break;
      case 1:
        // Navigate to WalletPage
        Navigator.push(
            context,
            PageTransition(
                child: const WalletPage(), type: PageTransitionType.fade)

            // MaterialPageRoute(builder: (context) => const WalletPage()),
            );
        break;
      case 2:
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => const MenuPage()),
        //   );
        // Navigate to Menu page
        // Add navigation for MenuPage here
        break;
      default:
        break;
    }
  }
}
