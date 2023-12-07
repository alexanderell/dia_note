import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progprojekt/views/widgets/note_bottom_sheet.dart';
import 'package:progprojekt/views/widgets/note_view_body.dart';
import '../cubits/notes/notes_cubit.dart';

class NoteView extends StatelessWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            context: context,
            builder: (context) {
               return const NoteBottomSheet();
            });
        },
        child: const Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}
