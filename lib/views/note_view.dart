import 'package:flutter/material.dart';
import 'package:progprojekt/views/widgets/custom_note_item.dart';




class NoteView extends StatelessWidget{
  const NoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

      return const Scaffold(
        body: NoteItem(),
      );
  }
}

