import 'package:flutter/material.dart';
import 'package:session9/widgets/rating.dart';

class FreelancerInfo extends StatelessWidget {
  const FreelancerInfo({
    super.key,
    required this.freelancerName,
    required this.freelancerJob,
    required this.freelancerImage,
    required this.freelancerRate,
  });

  final int freelancerImage;
  final String freelancerName;
  final String freelancerJob;
  final double freelancerRate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/$freelancerImage.png'),
              radius: 35,
            ),
            SizedBox(height: 3),
            Text(freelancerName, style: TextStyle(fontWeight: FontWeight.w600)),
            SizedBox(height: 2),
            Text(freelancerJob, style: TextStyle(fontWeight: FontWeight.bold,)),
            SizedBox(height: 4),
            Rating(freelancerRate: freelancerRate)
          ],
        ),
      ),
    );
  }
}
