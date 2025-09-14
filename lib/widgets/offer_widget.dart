import 'package:flutter/material.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          end: Alignment.centerLeft,
          begin: Alignment.centerRight,
          colors: [Color(0xffC2D7F2), Colors.white],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 2,
            top: 15,
            child: Image.asset('assets/images/1.png', fit: BoxFit.cover),
          ),
          Positioned(
            left: 10,
            top: 20,
            child: Text(
              'Todays Deal',
              style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
            ),
          ),
          Positioned(
            left: 10,
            top: 45,
            child: Text(
              '50% OFF',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 10,
            top: 90,
            child: Text(
              'Et provident dos est dolore. Eum Libero \neligendi molestias aut et quibusdam \naspernatur.',
              style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
            ),
          ),
          Positioned(
            left: 10,
            top: 160,
            bottom: 10,
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      Text(
                        'BUY IT NOW',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
