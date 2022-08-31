import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_production_boilerplate/data/models/inspiration/inspiration.dart';

class FireStore {
  CollectionReference inspirationsFireStore =
      FirebaseFirestore.instance.collection('inspirations');

  final Stream<QuerySnapshot> inspirationsFireStoreSnapshot =
      FirebaseFirestore.instance.collection('inspirations').snapshots();

  Future<void> addToFireStore(Inspiration inspiration) async {
    inspirationsFireStore.add({
      'inspirationTitle': inspiration.title,
      'description': inspiration.description,
      'author': inspiration.authorQuote,
      'quote': inspiration.quote,
      'imagePath': inspiration.imageUrl,
      'data': inspiration.date,
      'localization': inspiration.localization
    });
  }

  Future<void> readFromFireStore() async {
    StreamBuilder<QuerySnapshot>(
        stream: inspirationsFireStoreSnapshot,
        builder: (
          BuildContext context,
          AsyncSnapshot<QuerySnapshot> snapshot,
        ) {
          if (snapshot.hasError) {
            return Text('Something went wrong snapshot.');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('Loading');
          }
          final data = snapshot.requireData;

          return ListView.builder(
            itemCount: data.size,
            itemBuilder: (context, index) {
              return Text('Data builder success');
            },
          );
        });
  }
}

class Storage {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<String> uploadFile(String filePath, String fileName) async {
    File file = File(filePath);
    try {
      UploadTask uploadTask = storage.ref('images/$fileName').putFile(file);
      return await (await uploadTask).ref.getDownloadURL();
    } on firebase_core.FirebaseException catch (e) {
      print(e);
      return "";
    }
  }
}
