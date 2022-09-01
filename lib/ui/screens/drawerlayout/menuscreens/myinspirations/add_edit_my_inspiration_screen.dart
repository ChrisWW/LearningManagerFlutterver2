import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/my_inspirations/my_inspirations_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/inspiration/inspiration.dart';
import 'package:flutter_production_boilerplate/helpers/firebase_service.dart';
import 'package:image_picker/image_picker.dart';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;

class AddEditMyInspirationScreenArgs {
  final Inspiration? inspiration;

  const AddEditMyInspirationScreenArgs(this.inspiration);
}

class AddEditMyInspirationScreen extends StatefulWidget {
  static const String route = '/addEditMyInspirations';

  const AddEditMyInspirationScreen({Key? key}) : super(key: key);

  @override
  State<AddEditMyInspirationScreen> createState() =>
      _AddEditMyInspirationScreenState();
}

class _AddEditMyInspirationScreenState
    extends State<AddEditMyInspirationScreen> {
  TextEditingController inspirationTitle = TextEditingController();
  TextEditingController inspirationDescription = TextEditingController();
  TextEditingController date = TextEditingController();
  bool value = false;
  bool valueSecond = true;
  DateTime selectedDate = DateTime.now();
  XFile? _imageFile;
  String? downloadUrl;

  @override
  Widget build(BuildContext context) {
    return BlocListener<MyInspirationsBloc, MyInspirationsState>(
      listener: (context, state) {
        if (state is ShowMyInspirationsDataState) {
          Navigator.pop(context);
          print("SHOW");
        } else if (state is ErrorMyInspirationsState) {
          print("ERROR");
        } else {
          print("NOSTATE ERROR?");
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          actionsIconTheme: const IconThemeData(color: Colors.black),
          actions: [
            // TODO check bloc provider to inspiration
            IconButton(
              onPressed: () {
                final inspiration = Inspiration(
                  id: UniqueKey().hashCode.toString(),
                  title: inspirationTitle.value.text,
                  description: inspirationDescription.value.text,
                  imageUrl: downloadUrl.toString(),
                  date: DateTime.now().millisecondsSinceEpoch.toString(),
                  authorQuote: "",
                  quote: "",
                  localization: "",
                );

                BlocProvider.of<MyInspirationsBloc>(context).add(
                  AddMyInspiration(inspiration),
                );

                // FireStore().addToFireStore(inspiration);
              },
              icon: const Icon(Icons.save),
            ),
          ],
        ),
        body: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                //title
                TextFormField(
                  controller: inspirationTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Inspiration title",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                TextFormField(
                  controller: inspirationDescription,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: "Description",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    getImage(true);
                    print("on clicked image");
                  }, // Image tapped
                  child: _imageFile != null
                      ? Expanded(
                          child: Image.file(File(_imageFile!.path),
                              fit: BoxFit.scaleDown))
                      : Expanded(
                          child: Image.asset(
                            'img/gif_clickme.gif',
                            fit: BoxFit.scaleDown, // Fixes border issues
                          ),
                        ),
                ),
                ElevatedButton(
                  child: Text('Accept Picture'),
                  onPressed: () async {
                    downloadUrl = await (await Storage()
                        .uploadFile(_imageFile!.path, inspirationTitle.text));
                    print(
                        'Accept picture and save it in storage ++ $downloadUrl');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future getImage(bool isCamera) async {
    XFile? image;
    final ImagePicker picker = ImagePicker();
    if (isCamera) {
      image = await picker.pickImage(source: ImageSource.camera);
    } else {
      image = await picker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      _imageFile = image!;
    });
  }
}
