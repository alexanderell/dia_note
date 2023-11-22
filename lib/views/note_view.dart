import 'package:flutter/material.dart';
import 'package:progprojekt/views/widgets/note_bottom_sheet.dart';
import 'package:progprojekt/views/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context)
          {
            return const NoteBottomSheet();
          }
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}

