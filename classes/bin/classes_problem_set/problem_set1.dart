
/*
  Project: Library Management System

  This naturally needs almost every concept you listed. Here's the scenario:
  You're building a simple library system that manages different types of media (Books, EBooks, Audiobooks), tracks how many items exist total, and handles borrowing.
*/

void main(List<String> args) {
    List<LibraryItem> books = [
        Book(
            title: 'Some title', 
            author: 'Jan 3rd Bitoon', 
            pageCount: 821
        ),
        EBook.preview(),
        AudioBook(
            author: 'Jan 3rd Bitoon', 
            title: 'Some title', 
            durationLength: 500 , 
            narrator: 'Janskiee'
        )
    ];

    for (final book in books) {
        book.displayInfo();
        print(book.checkAvailability());
        print(book.summary);
    }
    LibraryItem.printLibraryStats();
}

abstract class LibraryItem {
    final String title;
    final String author;

    LibraryItem({required this.author, required this.title}) {
        totalItems++;
    }

    static int totalItems = 0;

    static void printLibraryStats() {
        print('Total items created: $totalItems');
    }

     String checkAvailability();

    void displayInfo () {
        print('Title: $title, Author: $author');
    }

    String get summary => '"$title" - $runtimeType';

    factory LibraryItem.create(
        String type, 
        String author, 
        String title
    ) {
        if (type == 'book') {
            return Book(author: author, title: title, pageCount: 0,);
        } else if (type == 'Ebook') {
            return EBook.preview();
        } else if (type == 'AudioBook') {
            return AudioBook(
                author: author, 
                title: title, 
                durationLength: 0, 
                narrator: ''
            );
        } else {
            throw ArgumentError ('Invalid action');
        }
    }
}

class Book extends LibraryItem {

    final int pageCount;

    Book({ 
        required super.title, 
        required super.author, 
        required this.pageCount
    });
    
      @override
    String checkAvailability() {
        return 'Physical copy - check shelf';
    }
}

class EBook extends LibraryItem {
    final double fileSizeMB;

    EBook.preview() : fileSizeMB = 0,
                      super(title: 'Preview unavailable', author: 'Unkown',);

    @override
    String checkAvailability() {
        return 'Digital - unlimited copies';
    }
  }

  class AudioBook extends LibraryItem {
    final int durationLength;

    String _narrator;

    AudioBook({
        required super.author, 
        required super.title, 
        required this.durationLength, 
        required this._narrator
    });

    String get narrator => _narrator;

    set narrator(String newNarrator) {
        if (_narrator.isEmpty) {
            _narrator = newNarrator;
        } else {
            return print('Invalid has Narrator');
        }
    }

  @override
  String checkAvailability() {
    return 'Audio stream - $durationLength min';
  }
}
