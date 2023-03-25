import 'package:flutter/material.dart'; // material design을 사용하기 위한 플러터의 기본 패키지, 애플 디자인은 cupertino.dart
import 'package:flutter_book_list/repositories/book_repository.dart';
import 'package:flutter_book_list/screens/detail_screen.dart';
import 'package:flutter_book_list/models/book.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});
  // 책과 다른 부분, Flutter3.0에서부터 이렇게 씀
  // 그 전 버전 (Key? key) : super(key: key)
  // key가 뭔지 아직 이해 못함

  final List<Book> books = BookRepository().getBooks();
  // books라는 리스트를 선언해서 _dummybooks의 정보들을 가져옴
  @override
  Widget build(BuildContext context) {
    // context 이해 부족, Scaffold가 Widget 트리 내 어디에 위치하는지에 대한 정보를 가지고 있음
    return Scaffold(
        appBar: AppBar(
          title: Text('Book List App'),
        ),
        body: ListView.builder(
          // 스크롤뷰를 만들기 위한 위젯
          itemCount: books.length,
          itemBuilder: (context, index) {
            return BookTile(
                book: books[index]); // itemCount만큼의 인덱스만큼 BookTile을 build?
          },
        ));
  }
}

class BookTile extends StatelessWidget {
  // ListTile을 클릭하면 세부 화면으로 넘어가면서 책 정보들이 넘어가야하는데 이 데이터를 ListTile이 가지고 있을 수 없다
  // 따라서 우리의 입맛에 맞는 위젯을 따로 작성
  final Book book;
  BookTile({required this.book});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      leading: Image.network(book.image),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              book: book,
            ),
          ),
        );
      },
    );
  }
}
