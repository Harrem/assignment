import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CloudStore {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void writeMessage(message, user) {
    firestore
        .collection("messages")
        .add({'msg': message, 'user': user, 'date': DateTime.now()})
        .then((value) => debugPrint("user Added"))
        .catchError((e) => e);
  }

  Stream<QuerySnapshot> readMessage() {
    var res = firestore.collection("messages").orderBy('date').snapshots();
    return res;
  }
}
