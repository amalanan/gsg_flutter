import 'package:flutter/material.dart';
import 'package:session9/widgets/widgets.dart';

<<<<<<< HEAD
import '../data/data.dart';
=======
import '../home/data.dart';
>>>>>>> ced879a4e675c1cfa05c213e0718699f54bcd5ba
import '../models/models.dart';

class TopRatedFreelances extends StatelessWidget {
  const TopRatedFreelances({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: infoOfFreelances.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 4, right: 10),
            child: FreelancerInfo(model: infoOfFreelances[index]),
          );
        },
      ),
    );
  }
}
