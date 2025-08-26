import 'package:flutter/material.dart';
import 'package:session9/widgets/freelancer_info.dart';
import 'package:session9/widgets/section_widget.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<List<dynamic>> infoOfFreelances = [
    ["Wizard", "UI Designer", 4.5],
    ["Mohammed", "App Developer", 4.7],
    ["Yara", "Web Developer", 4.8],
    ["Aseel", "Graphics Designer", 4.2],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Image.asset('assets/images/logo.png'),
        actions: [
          Icon(Icons.notifications_active),
          SizedBox(width: 20),
          Icon(Icons.shopping_cart),
          SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: TextField(
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        hintText: 'Search here',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade700, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.filter_list),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Container(
                height: 210,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    end: Alignment.centerLeft,
                    begin: Alignment.centerRight,
                    colors: [Color(0xffC2D7F2), Colors.white],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 2,
                      top: 15,
                      child: Image.asset(
                        'assets/images/1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 20,
                      child: Text(
                        'Todays Deal',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 45,
                      child: Text(
                        '50% OFF',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 90,
                      child: Text(
                        'Et provident dos est dolore. Eum Libero \neligendi molestias aut et quibusdam \naspernatur.',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 160,
                      bottom: 10,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Text(
                                  'BUY IT NOW',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.arrow_forward, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: SectionWidget(sectionTitle: 'Top Rated Freelances'),
              ),
              SizedBox(
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
              ),

              SizedBox(height: 10),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: SectionWidget(sectionTitle: 'Top Services'),
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    width: 157,
                    height: 154,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/6.png'))
                    ),
                  )
                ],
              )
              //   SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
