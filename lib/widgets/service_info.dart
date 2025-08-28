import 'package:flutter/material.dart';
import 'package:session9/models/service_model.dart';
import 'package:session9/widgets/rating.dart';

import '../routes.dart';

class ServiceInfo extends StatelessWidget {
  const ServiceInfo({super.key, required this.model});

  final ServiceModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(
          context,
          Routes.freelancerDetails,
          arguments: model,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.centerRight,
            children: [
              Container(
                width: 250,
                height: 190,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(model.serviceImage),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                right: -160,
                top: 10,
                child: Container(
                  width: 270,
                  height: 163,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ListTile(
                          minVerticalPadding: 10,
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(model.cardImage),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model.serviceName,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                model.serverJob,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff827BEB),
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text(
                            model.serviceDescription,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Rating(freelancerRate: model.serviceRate),
                          SizedBox(width: 7),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(8),
                              height: 31,
                              width: 102,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff827BEB),
                              ),
                              child: Center(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
