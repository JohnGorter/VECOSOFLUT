

class RecordItem {
  String imageurl;
  String name;
  String url;
  List<String> songs;
  RecordItem({this.name, this.url, this.imageurl, this.songs});
}

class Records {
  static List<RecordItem> items = [
    RecordItem(name: "John", url:"https://firebasestorage.googleapis.com/v0/b/todoapp-7013c.appspot.com/o/abba.mp3?alt=media&token=7c62b400-e254-4019-94ae-d2c2ad8f558b", imageurl: 'https://img.discogs.com/fk2neaiiAJk6pWQZL-s6eMiUDFQ=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/L-33962-1380542813-9161.png.jpg', songs:['a','b','c']),
    RecordItem(name: "John 2", url:'https://firebasestorage.googleapis.com/v0/b/todoapp-7013c.appspot.com/o/abba.mp3?alt=media&token=7c62b400-e254-4019-94ae-d2c2ad8f558b', songs:['1','2','7']),
    RecordItem(name: "John 3", url:'https://firebasestorage.googleapis.com/v0/b/todoapp-7013c.appspot.com/o/abba.mp3?alt=media&token=7c62b400-e254-4019-94ae-d2c2ad8f558b', songs:['1','3','6']),
    RecordItem(name: "John 4", url:'https://firebasestorage.googleapis.com/v0/b/todoapp-7013c.appspot.com/o/abba.mp3?alt=media&token=7c62b400-e254-4019-94ae-d2c2ad8f558b', songs:['1','4','5']),
    RecordItem(name: "John 5", url:'https://firebasestorage.googleapis.com/v0/b/todoapp-7013c.appspot.com/o/abba.mp3?alt=media&token=7c62b400-e254-4019-94ae-d2c2ad8f558b', songs:['1','5','4']),
    RecordItem(name: "John 6", url:'https://firebasestorage.googleapis.com/v0/b/todoapp-7013c.appspot.com/o/abba.mp3?alt=media&token=7c62b400-e254-4019-94ae-d2c2ad8f558b', songs:['1','6','3']),
    RecordItem(name: "John 7", url:'https://firebasestorage.googleapis.com/v0/b/todoapp-7013c.appspot.com/o/abba.mp3?alt=media&token=7c62b400-e254-4019-94ae-d2c2ad8f558b', songs:['1','7','2']),
  ];
}