import 'package:flutter/material.dart';
import 'package:mini_ecommerce_appln/components/bottom_nav_bar.dart';
import 'package:mini_ecommerce_appln/pages/shop_page.dart';
import 'package:mini_ecommerce_appln/pages/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// Selected index of the bottom navigation bar
  int _selectedIndex = 0;

// Update selected index
  void _navigateBottomBar(int? index) {
    setState(() {
      _selectedIndex = index ?? 0;
    });
  }

// pages to display
  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavBar(
        onTabChange: _navigateBottomBar,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.blue.shade900,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // other pages
            Column(
              children: [
                DrawerHeader(
                    // Logo
                    child: Image.asset(
                  'assets/img/LogoUA.png',
                  color: Colors.white,
                  width: 100.0,
                )),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_bag_rounded,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Cart',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.money,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Payment Method',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Saved',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 10.0, right: 10.0, bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
