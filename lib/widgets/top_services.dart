import 'package:flutter/material.dart';
import 'package:session9/widgets/service_info.dart';
import '../home/data.dart';

class TopServices extends StatelessWidget {
  const TopServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 4, right: 10),
            child: ServiceInfo(
              serviceRate: servicesNamesAndDescription[index][2],
              serviceDescription: servicesNamesAndDescription[index][1],
              serverJob: infoOfFreelances[index][1],
              serviceName: servicesNamesAndDescription[index][0],
              cardImageNumber: index + 2,
              serviceImage: 'assets/images/${index + 6}.png',
            ),
          );
        },
      ),
    );
  }
}
