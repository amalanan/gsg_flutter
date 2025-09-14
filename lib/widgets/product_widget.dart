import 'package:flutter/material.dart';
import 'package:session9/models/product_model.dart';
import 'package:session9/widgets/product_details.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails(model: model),
          ),
        );
      },
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          model.image,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        model.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Row(
        children: [
          Text(model.rating?.toStringAsFixed(1) ?? '0'),
          const Icon(Icons.star, color: Colors.amberAccent, size: 16),
          const SizedBox(width: 8),
          Text('\$${model.price}'),
        ],
      ),
      trailing: Text(
        '\$${model.price}',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
