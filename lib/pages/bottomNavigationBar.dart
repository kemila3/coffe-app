import 'package:coffee_shop/pages/cartPage.dart';
import 'package:coffee_shop/pages/favouritePage.dart';
import 'package:coffee_shop/pages/homePage.dart';
import 'package:coffee_shop/pages/notificationsPage.dart';
import 'package:coffee_shop/pages/profilePage.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  var currentIndex = 0;
  late final CartPage cartPage;
  late final FavouritePage favouritePage;
  late final HomePage homePage;
  late final NotificationsPage notificationsPage;
  late final ProfilePage profilePage;
  late  List<Widget> pages;

  @override
  void initState() {
    homePage = HomePage();
    cartPage = CartPage();
    favouritePage = FavouritePage();
    notificationsPage = NotificationsPage();
    profilePage = ProfilePage();
    pages = [homePage,favouritePage,cartPage,notificationsPage,profilePage];
    super.initState();
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 20),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color.fromRGBO(150, 114, 89, 0.9),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favourite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "Notification",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
