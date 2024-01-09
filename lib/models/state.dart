import 'package:cloud_firestore/cloud_firestore.dart';

class StateModel {
  String name;
  String thumbnailUrl;
  String timestamp;

  StateModel({
    required this.name,
    required this.thumbnailUrl,
    required this.timestamp
  });


  factory StateModel.fromFirestore(DocumentSnapshot snapshot){
    var d = snapshot.data() as Map<String, dynamic>?;
    if (d == null) {
      throw StateError('Snapshot data is null.');
    }
    return StateModel(
      name: d['name']?? '',
      thumbnailUrl: d['thumbnail'],
      timestamp: d['timestamp'],
    );
  }


  Map<String, dynamic> toJson (){
    return {
      'name' : name,
      'thumbnail' : thumbnailUrl,
      'timestamp' : timestamp
    };
  }
}

