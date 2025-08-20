import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Image.asset('assets/images/logo.png'),
            actions: [
              Icon(Icons.email),
              SizedBox(width: 20),
              Icon(Icons.shopping_cart),
              SizedBox(width: 20),
            ]
        ),
        body: Center(
            child: Padding(padding: EdgeInsets.all(8),
                child: Column(children: [Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,

                                colors: [
                                  Color(0xffC2D7F2), Colors.white
                                ])
                        ),
                        child: Text('Top Service', style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                      ), TextButton(
                          onPressed: () {},
                          child: Text('View All', style: TextStyle(
                              decoration: TextDecoration.underline
                          ))
                      )
                    ]
                )
                ])
            )
        )
    );
  }
}
