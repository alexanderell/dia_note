import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:progprojekt/constants.dart';
import 'package:progprojekt/cubits/add_note_cubit.dart';
import 'package:progprojekt/models/note_model.dart';
import 'package:progprojekt/simple_bloc_observer.dart';
import 'package:progprojekt/views/note_view.dart';


void main() async{
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Times new roman'
      ),
      home: const NoteView(),
    );
  }
}
