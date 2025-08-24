import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> namesOfFreelances = [
      'Wade Warren',
      'Kerem Log',
      'Amal Anan',
      'Tamara Sweet',
    ];
    List<double> ratesOfFreelances = [4.9, 4.8, 4.6, 4.5];
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
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.search),
                    title: TextField(
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Search here',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    trailing: Icon(Icons.filter_list),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                flex: 3,
                child: Container(
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
                        right: 10,
                        top: 35,
                        child: Image.asset('assets/images/1.png'),
                      ),
                      Positioned(
                        left: 10,
                        top: 20,
                        child: Text(
                          'Todays Deal',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 55,
                        child: Text(
                          '50% OFF',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 110,
                        child: Text(
                          'Et provident dos est dolore. Eum Libero \neligendi molestias aut et quibusdam \naspernatur.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 190,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'BUY IT NOW',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [Color(0xffC2D7F2), Colors.white],
                        ),
                      ),
                      child: Text(
                        'Top Rated Freelances',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                flex: 2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: namesOfFreelances.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        right: 10,
                        left: 10,
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Column(
                          children: [
                            Image.asset('assets/images/${index + 2}.png'),
                            SizedBox(height: 4),
                            Text(namesOfFreelances[index]),
                            SizedBox(height: 2),
                            Text(
                              'Beautician',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Image.asset('assets/images/star.png'),
                                SizedBox(width: 5),
                                Text(
                                  '${ratesOfFreelances[index]}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [Color(0xffC2D7F2), Colors.white],
                        ),
                      ),
                      child: Text(
                        'Top Service',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
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
                        right: 10,
                        child: Image.asset('assets/images/1.png'),
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
