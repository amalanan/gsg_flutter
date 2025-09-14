import 'package:flutter/material.dart';
import 'package:session9/models/product_model.dart';
import 'package:session9/widgets/rating.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 100,
          child: Column(
            children: [
              Image.network(model.image),
              SizedBox(height: 3),
              Text(
                model.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xff827BEB),
                ),
              ),
              SizedBox(height: 2),
              Text(
                model.description,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Rating(freelancerRate: model.rating),
            ],
          ),
        ),
      ),
    );
  }
}
