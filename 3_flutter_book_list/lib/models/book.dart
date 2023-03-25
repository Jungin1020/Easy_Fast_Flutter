// lib/models/book.dart
class Book {
  final String title;
  final String subtitle;
  final String description;
  final String image;

  Book({
    required this.title,
    // this 키워드를 사용하여 클래스의 인스턴스 변수에 접근할 수 있다
    // 파이썬의 self 같은 건가보다
    required this.subtitle,
    required this.description,
    required this.image,
  });
}
