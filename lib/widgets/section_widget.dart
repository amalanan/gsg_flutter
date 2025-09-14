import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({super.key, required this.sectionTitle});

  final String sectionTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xffC2D7F2), Colors.white],
            ),
          ),
          child: Text(
            sectionTitle,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width),
        TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
