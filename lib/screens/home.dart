import 'package:flutter/material.dart';
import '../routes.dart';
import '../widgets/widgets.dart';

class Home extends StatelessWidget {
  Home({super.key,this.name});
  String? name;
  @override
  Widget build(BuildContext context) {
    name = ModalRoute.of(context)!.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.login);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Hello ${name ?? 'Guest'}'),
                ),
              ),
              SearchWidget(),
              SizedBox(height: 10),
              OfferWidget(),
              SizedBox(height: 15),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: SectionWidget(sectionTitle: 'Top Rated Freelances'),
              ),
              TopRatedFreelances(),
              SizedBox(height: 10),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: SectionWidget(sectionTitle: 'Top Services'),
              ),
              TopServices(),
            ],
          ),
        ),
      ),
    );
  }
}
