import 'dart:async';
import 'dart:core';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_application_1/Insta_clone/storage_methods.dart';
import 'package:flutter_application_1/Signup2.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebase = FirebaseFirestore.instance;
  Future<String> Signup2({
    required String username,
    required String email,
    required String password,
    required String mobile,
  }) async {
    String res = 'Some Error';
    try {
      if (username.isNotEmpty ||
          email.isNotEmpty ||
          password.isNotEmpty ||
          mobile.isNotEmpty) {
        UserCredential cred = await _auth.signInWithEmailAndPassword(
            email: email, password: password);
            print(cred.user!.uid);
            await _firebase.collection('users').doc(cred.user!.uid).set({
              'username':username,
              'email':email,
              'password':password,
              'M.Number':mobile,
              'uid':cred.user!.uid,
            });
            return res='success';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
