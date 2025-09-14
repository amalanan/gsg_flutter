import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Books extends StatefulWidget {
  const Books({super.key});
  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  List books = [];

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  @override
  Widget build(BuildContext context) {
    if (books.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        var book = books[index];
        return ListTile(
          leading: Image.network(
            book['cover'],
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
          title: Text(book['title']),
          subtitle: Text(book['description']),
        );
      },
    );
  }

  fetchBooks() async {
    try {
      var response = await get(
        Uri.parse('https://potterapi-fedeperin.vercel.app/en/books'),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        setState(() {
          books = data;
        });
      } else {
        debugPrint('Failed to load books: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error fetching books: $e');
    }
  }
}
