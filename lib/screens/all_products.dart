import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:session9/models/product_model.dart';
import 'package:session9/widgets/product_widget.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  List<ProductModel> products = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('All Products'),
        centerTitle: true,
        actions: const [Icon(Icons.shopping_cart)],
      ),
      backgroundColor: Colors.grey[200],
      body: products.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductWidget(model: products[index]);
              },
            ),
    );
  }

  Future<void> fetchData() async {
    try {
      final response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<ProductModel> loadedProducts = [
          for (Map map in data) ProductModel.fromJson(map)
        ];
        setState(() {
          products = loadedProducts;
        });
      } else {
        log('Failed to load products: ${response.statusCode}');
      }
    } catch (e) {
      log('Error fetching data: $e');
    }
  }
}
