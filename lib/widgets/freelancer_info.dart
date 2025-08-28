import 'package:flutter/material.dart';
import 'package:session9/widgets/rating.dart';

import '../models/models.dart';

class FreelancerInfo extends StatelessWidget {
  const FreelancerInfo({super.key, required this.model});

  final FreelancerModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(model.freelancerImage),
              radius: 35,
            ),
            SizedBox(height: 3),
            Text(
              model.freelancerName,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xff827BEB),
              ),
            ),
            SizedBox(height: 2),
            Text(
              model.freelancerJob,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Rating(freelancerRate: model.freelancerRate),
          ],
        ),
      ),
    );
  }
}
