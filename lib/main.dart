import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:progprojekt/constants.dart';
import 'package:progprojekt/models/note_model.dart';
import 'package:progprojekt/views/note_view.dart';


void main() async{
  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const NoteView(),
    );
  }
}
