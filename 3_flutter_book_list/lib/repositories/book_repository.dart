import 'package:flutter_book_list/models/book.dart';

class BookRepository {
  final List<Book> _dummyBooks = [
    // List<> 인용표 안에는 타입이 들어간다. class도 가능한가 보다.
    // Book 타입을 가지는 _dummyBooks라는 이름을 가진 List 변수를 정의했다.
    Book(
      title: 'Philosopher whom loved by Raffaello',
      subtitle: '예술은 어떻게 과학과 철학의 힘이 되는가',
      description: '라파엘로의 시선으로 들려주는 과학, 철학, 예술, 종교의 역사',
      image:
          'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FdfyT6j%2FbtrZrxKYaeL%2FkCAEMRAXMqDb3GGt2jABoK%2Fimg.jpg',
    ),
    Book(
      title: 'Ballot Counting Broadcast',
      subtitle: '0.1%의 승부, 소프트웨어로 분석하는 선거 개표방송',
      description:
          '대한민국 운명을 바꾸는 뜨거운 승부 속, 화제의 선거 개표방송! 개표방송의 역사와 개발 비하인드 스토리까지 속속들이 파헤친다',
      image:
          'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbzrHRJ%2FbtrCDJN65ia%2FGmP6VuJPark0wrouw7hrm1%2Fimg.png',
    ),
    Book(
      title: 'Fast Easy Flutter',
      subtitle: '쉽고 빠른 플러터 앱 개발',
      description:
          '인프런의 인기 강의, “무작정 시리즈” 제작자가 직접 집필한 플러터 도서. 초심자들도 어렵지 않은, 쉽고 빠른 플러터 앱 개발!',
      image:
          'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FFjoWL%2FbtrAwDwUGux%2FyBbD9J9q3SEABTauWcBGqK%2Fimg.png',
    ),
    Book(
      title: 'Learn Figma',
      subtitle: '웹 디자인 & 웹 퍼블리싱을 위한 피그마 완벽 활용서',
      description:
          '본 도서는 웹 디자인뿐만 아니라 웹 퍼블리싱 구현까지 한 번에 학습할 수 있는 유일한 책이다. 책 전반에 걸쳐 ‘디자인’부터 ‘코딩’까지 총망라하며, 모바일 쇼핑몰 및 반응형 포트폴리오 웹 페이지를 제작한다.',
      image:
          'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fyvsr9%2Fbtq9t7p8rFt%2Fx98J2ZBgA6wuQZWUffvDUK%2Fimg.png',
    ),
  ];

  List<Book> getBooks() {
    // Book 타입의 리스트를 리턴하는 getBooks라는 메서드를 정의했다
    return _dummyBooks;
  }
}
