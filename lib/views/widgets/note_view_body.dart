import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubits/notes/notes_cubit.dart';
import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({Key? key}) : super(key: key);

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();

}

class _NoteViewBodyState extends State<NoteViewBody>{

  @override

  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    ['note', 'note'];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}



