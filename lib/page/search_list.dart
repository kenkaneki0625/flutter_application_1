import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/books.dart';
import 'package:flutter_application_1/page/book_page.dart';
import '../widget/navigation_drawer_widget.dart';
import '../widget/change_theme_button_widget.dart';

class SearchListPage extends StatefulWidget {
  @override
  _SearchListPageState createState() => _SearchListPageState();
}

class _SearchListPageState extends State<SearchListPage> {
  final controller = TextEditingController();
  List<Book> books = allBooks;
  List<Book> books2 = allBooks2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Home"),
          actions: [
            ChangeThemeButtonWidget(),
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  hintText: 'Search',
                  //hintStyle: TextStyle(color: color),
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white12,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                onChanged: searchBook,
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      final book = books[index];
                      return ListTile(
                        leading: Image.network(
                          book.urlImage,
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                        title: Text(book.title),
                        onTap: ()=>Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BookPage(book:book))
                        ),
                      );
                    })),
                    const SizedBox(height: 24),
            Expanded(
                child: ListView.builder(
                    itemCount: books2.length,
                    itemBuilder: (context, index) {
                      final book = books2[index];
                      return ListTile(
                        leading: Image.network(
                          book.urlImage,
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                        title: Text(book.title),
                        onTap: ()=>Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BookPage(book:book))
                        ),
                      );
                    })),
          ],
        ));
  }

  void searchBook(String query) {
    final suggestions = allBooks.where((book) {
      final bookTitle = book.title.toLowerCase();
      final input = query.toLowerCase();
      return bookTitle.contains(input);
    }).toList();

    final suggestions2 = allBooks2.where((book) {
      final bookTitle = book.title.toLowerCase();
      final input = query.toLowerCase();
      return bookTitle.contains(input);
    }).toList();

    setState(() => {
      books = suggestions,
      books2 = suggestions2
    });
  }
}
