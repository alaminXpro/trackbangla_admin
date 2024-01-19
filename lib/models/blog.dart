
import 'package:cloud_firestore/cloud_firestore.dart';

class Blog {

  String title;
  String description;
  String thumbUrl;
  int loves;
  String sourceUrl;
  String date;
  String timestamp;

  Blog({

    required this.title,
    required this.description,
    required this.thumbUrl,
    required this.loves,
    required this.sourceUrl,
    required this.date,
    required this.timestamp,
  });

  factory Blog.fromFirestore(DocumentSnapshot snapshot) {
    var d = snapshot.data() as Map<String, dynamic>;
    return Blog(
      title: d['title'] ?? '',
      description: d['description'] ?? '',
      thumbUrl: d['image url'] ?? '',
      loves: d['loves'] ?? 0,
      sourceUrl: d['source'] ?? '',
      date: d['date'] ?? '',
      timestamp: d['timestamp'] ?? Timestamp.now(),
    );
  }
}