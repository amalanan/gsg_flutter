import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, required this.freelancerRate});

  final double freelancerRate;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color(0xff827BEB).withAlpha(25),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Icon(Icons.star_rounded, color: Color(0xff827BEB)),
          Text(
            freelancerRate.toStringAsFixed(1),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
