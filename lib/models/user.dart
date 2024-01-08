import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String userName;
  String userEmail;
  String imageUrl;
  String uid;
  String joiningDate;
  String timestamp;

  User({
    required this.userName,
    required this.userEmail,
    required this.imageUrl,
    required this.uid,
    required this.joiningDate,
    required this.timestamp
  });


  factory User.fromFirestore(DocumentSnapshot snapshot){
    var d = snapshot.data() as Map<String, dynamic>?;
    if (d == null) {
      throw StateError('Snapshot data is null.');
    }
    return User(
      userName: d['name'] ?? '',
      userEmail: d['email'] ?? '',
      imageUrl: d['image url'] ?? 'https://firebasestorage.googleapis.com/v0/b/trackbangla-faef2.appspot.com/o/avater.png?alt=media&token=e944abc2-08f2-4034-9756-3ffa9299b438',
      uid: d['uid'] ?? '',
      joiningDate: d['joining date'] ?? '', timestamp: '',
    );
  }
}