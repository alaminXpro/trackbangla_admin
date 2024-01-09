import 'package:cloud_firestore/cloud_firestore.dart';

class Guide {
  String startpointName;
  String endpointName;
  double startpointLat;
  double startpointLng;
  double endpointLat;
  double endpointLng;
  String price;
  List<dynamic> paths;

  Guide({
    required this.startpointName,
    required this.endpointName,
    required this.startpointLat,
    required this.startpointLng,
    required this.endpointLat,
    required this.endpointLng,
    required this.price,
    required this.paths,
  });

  factory Guide.fromFirestore(DocumentSnapshot snapshot) {
    var d = snapshot.data() as Map<String, dynamic>?;

    if (d == null) {
      throw StateError('Snapshot data is null.');
    }

    return Guide(
      startpointName: d['startpoint name'] ?? '',
      endpointName: d['endpoint name'] ?? '',
      startpointLat: (d['startpoint lat'] as double?) ?? 0.0,
      startpointLng: (d['startpoint lng'] as double?) ?? 0.0,
      endpointLat: (d['endpoint lat'] as double?) ?? 0.0,
      endpointLng: (d['endpoint lng'] as double?) ?? 0.0,
      price: d['price'] ?? '',
      paths: d['paths'] ?? [],
    );
  }
}
