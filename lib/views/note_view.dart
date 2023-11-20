import 'package:flutter/material.dart';
import 'package:progprojekt/widgets/note_view_body.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class NoteView extends StatelessWidget{
  const NoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

      return const Scaffold(
        body: NoteViewBody(),
      );
  }
}

