import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class NotificationModel {
  String title;
  String description;
  String createdAt;
  String timestamp;

  NotificationModel({
    required this.title,
    required this.description,
    required this.createdAt,
    required this.timestamp,
  });

  factory NotificationModel.fromFirestore(DocumentSnapshot snapshot) {
    var d = snapshot.data() as Map<String, dynamic>?;

    if (d == null) {
      throw StateError('Snapshot data is null.');
    }

    return NotificationModel(
      title: d['title'] ?? '',
      description: d['description'] ?? '',
      createdAt: d['created_at'] != null
          ? DateFormat('d MMM, y').format((d['created_at'] as Timestamp).toDate())
          : '',
      timestamp: d['timestamp'] ?? '',
    );
  }
}
