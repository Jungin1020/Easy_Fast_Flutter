// ignore: unused_import
import 'package:flutter_book_list/screens/detail_screen.dart';
import 'package:flutter_book_list/screens/list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // runApp은 widget Tree의 Root를 형성하는 widget을 인자로 받는다
}

class MyApp extends StatelessWidget {
  // extend는 상속을 뜻한다. StatelessWidget을 상속한다는 것은
  // 모든 것이 immutable 즉 변경할 수 없고, final로 변경할 수 없다??
  const MyApp(
      {super.key}); // MyApp 생성자(init)의 인자인 key는 상속해준 클래스의 key를 value로 가진다??

  @override
  Widget build(BuildContext context) {
    // build에서 반환된 widget은 화면에 나온다
    return MaterialApp(
      title: 'Book List App',
      home: ListScreen(),
    );
  }
}
