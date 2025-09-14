import 'package:flutter/material.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
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
    );}
}
