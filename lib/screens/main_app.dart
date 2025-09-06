import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:session9/routes.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int index = 0;
  Widget data = Text('Home');
  List<Widget> screens = [Text('Home'), Text('Cart'), Text('Settings')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text('Login'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.login);
              },
            ),
            ListTile(
              title: Text('SignUp'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.signup);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('My First App'),
        centerTitle: true,
        actions: [
          Icon(Icons.home),
          Icon(Icons.shopping_cart),
          Icon(Icons.settings),
        ],
        //   bottom: TabBar(tabs: [Text('tab1'), Text('tab2'), Text('tab3')]),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                fetchData();
              },
              child: Text('fetch data'),
            ),
          ],
        ),
      ),
      //  body: Center(child: screens[index]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
            // switch(value){
            //   case 0 : data = Text('Home');
            //   case 1: data = Text('Cart');
            //   case 2: data = Text('Settings');
            // }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
            activeIcon: Icon(Icons.shopping_bag),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
            activeIcon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }

  fetchData() async {
    try {
      var response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
      log(response.body);
    } catch (e) {
      log('Error fetching data: $e');
    }
  }

}
