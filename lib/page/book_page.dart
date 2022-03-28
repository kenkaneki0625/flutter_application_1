import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/books.dart';
import '../widget/navigation_drawer_widget.dart';
import '../widget/change_theme_button_widget.dart';

class BookPage extends StatelessWidget {
  final Book book;

  const BookPage({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(book.title),
        ),
        body: Image.network(
                          book.urlImage,
                          fit: BoxFit.cover,
                          height: 300,
                        ),
        );
  }
}
