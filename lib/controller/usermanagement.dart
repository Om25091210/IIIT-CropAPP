import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crop_disease_detection/screens/HomePages/home_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class UserManagement {
  storeNewUser(fullname,phoneno,email,password,context) {
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');
    final DocumentReference userDocument = usersCollection.doc(uid);
    Map<String, dynamic> userData = {
      'name': fullname,
      'phone': phoneno,
      "email": email,
      'password': password,
    };
    userDocument.set(userData);
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => HomePage()));
  }
}