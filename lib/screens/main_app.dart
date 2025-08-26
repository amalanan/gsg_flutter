import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('My First App'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
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
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                        image: AssetImage('assets/images/16.jpg'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    width: 300,
                    height: 300,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
