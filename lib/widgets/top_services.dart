import 'package:flutter/material.dart';
import 'package:session9/widgets/service_info.dart';
<<<<<<< HEAD
import '../data/data.dart';
=======
import '../home/data.dart';
>>>>>>> ced879a4e675c1cfa05c213e0718699f54bcd5ba

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
            child: ServiceInfo(model: servicesNamesAndDescription[index]),
          );
        },
      ),
    );
  }
}
