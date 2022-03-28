class Book {
  final String title;
  final String urlImage;

  const Book({
    required this.title,
    required this.urlImage,
  });
}

const allBooks = [
  Book(title: 'ABC', urlImage: 'https://source.unsplash.com/random?sig=20'),
  Book(title: 'bdg', urlImage: 'https://source.unsplash.com/random?sig=30'),
  Book(title: 'mno', urlImage: 'https://source.unsplash.com/random?sig=40'),
];

const allBooks2 = [
  Book(title: 'bcd', urlImage: 'https://source.unsplash.com/random?sig=20'),
  Book(title: 'pqr', urlImage: 'https://source.unsplash.com/random?sig=30'),
  Book(title: 'mno', urlImage: 'https://source.unsplash.com/random?sig=40'),
];
