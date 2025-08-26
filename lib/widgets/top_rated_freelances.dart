import 'package:flutter/material.dart';
import 'package:session9/widgets/widgets.dart';

import '../home/data.dart';
class TopRatedFreelances extends StatelessWidget {
  const TopRatedFreelances({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: infoOfFreelances.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 4, right: 10),
            child: FreelancerInfo(
              freelancerImage: (index + 2),
              freelancerName: infoOfFreelances[index][0],
              freelancerJob: infoOfFreelances[index][1],
              freelancerRate: infoOfFreelances[index][2],
            ),
          );
        },
      ),
    );
  }
}
