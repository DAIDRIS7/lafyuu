import 'package:flutter/material.dart';
import 'package:lafyuu/Screens/account.dart';
import 'package:lafyuu/Screens/cartScreen.dart';
import 'package:lafyuu/Screens/homeScreen.dart';
import 'package:lafyuu/Screens/offersScreen.dart';
import 'package:lafyuu/Screens/searchScreen.dart';

class MainHome extends StatefulWidget {
  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  var activeIndex = 0;

  List<Widget> listOfScreens = [
    Homepage(),
    Search(),
    CartScreen(),
    Offers(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: activeIndex,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sell,
            ),
            label: "Offer",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
      body: listOfScreens[activeIndex],
    );
  }
}
