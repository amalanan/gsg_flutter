import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
  ServiceModel model =
    ModalRoute.of(context)!.settings.arguments as ServiceModel;
    return Scaffold(
      appBar: AppBar(title: Text(model.serviceName)),
      body: Center(
        child: Column(
          children: [
            Image.asset(model.serviceImage),
            Text(model.serviceName),
            Image.asset(model.cardImage),
            Text(model.serviceDescription),
            Text(model.serverJob),
            Rating(freelancerRate: model.serviceRate),
          ],
        ),
      ),
    );
  }
}
