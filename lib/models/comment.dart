import 'package:cloud_firestore/cloud_firestore.dart';

class Comment {
  String uid;
  String name;
  String imageUrl;
  String comment;
  String date;
  String timestamp;

  Comment({
    required this.uid,
    required this.name,
    required this.imageUrl,
    required this.comment,
    required this.date,
    required this.timestamp,
  });

  factory Comment.fromFirestore(DocumentSnapshot snapshot) {
    var d = snapshot.data() as Map<String, dynamic>?;

    if (d == null) {
      throw StateError('Snapshot data is null.');
    }

    return Comment(
      uid: d['uid'] ?? '',
      name: d['name'] ?? '',
      imageUrl: d['image url'] ?? '',
      comment: d['comment'] ?? '',
      date: d['date'] ?? '',
      timestamp: d['timestamp'] ?? '',
    );
  }
}
