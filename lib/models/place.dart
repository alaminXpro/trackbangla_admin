import 'package:cloud_firestore/cloud_firestore.dart';

class Place {
  String state;
  String name;
  String location;
  double latitude;
  double longitude;
  String description;
  String imageUrl1;
  String imageUrl2;
  String imageUrl3;
  int loves;
  int commentsCount;
  String date;
  String timestamp;

  Place({
    required this.state,
    required this.name,
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.description,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.loves,
    required this.commentsCount,
    required this.date,
    required this.timestamp,
  });

  factory Place.fromFirestore(DocumentSnapshot snapshot) {
    var d = snapshot.data() as Map<String, dynamic>?;

    if (d == null) {
      throw StateError('Snapshot data is null.');
    }

    return Place(
      state: d['state'] ?? '',
      name: d['place name'] ?? '',
      location: d['location'] ?? '',
      latitude: (d['latitude'] as double?) ?? 0.0,
      longitude: (d['longitude'] as double?) ?? 0.0,
      description: d['description'] ?? '',
      imageUrl1: d['image-1'] ?? '',
      imageUrl2: d['image-2'] ?? '',
      imageUrl3: d['image-3'] ?? '',
      loves: d['loves'] ?? 0,
      commentsCount: d['comments count'] ?? 0,
      date: d['date'] ?? '',
      timestamp: d['timestamp'] ?? '',
    );
  }
}
