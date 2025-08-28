import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class FreelancerDetails extends StatelessWidget {
  const FreelancerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    FreelancerModel model =
        ModalRoute.of(context)!.settings.arguments as FreelancerModel;
    return Scaffold(
      appBar: AppBar(title: Text(model.freelancerName)),
      body: Center(
        child: Column(
          children: [
            Image.asset(model.freelancerImage),
            Text(model.freelancerName),
            Text(model.freelancerJob),
            Rating(freelancerRate: model.freelancerRate),
          ],
        ),
      ),
    );
  }
}
