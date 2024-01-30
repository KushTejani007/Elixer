import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/HomeScreen.dart';
import 'package:flutter_application_1/Pages/menu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 100,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Wallet'),
        backgroundColor: Colors.teal,
        
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
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1:
        // Navigate to WalletPage
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const WalletPage()),
        // );
        break;
      case 2:
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MenuPage()),
        );
        // Navigate to Menu page
        // Add navigation for MenuPage here
        break;
      default:
        break;
    }
  }
}