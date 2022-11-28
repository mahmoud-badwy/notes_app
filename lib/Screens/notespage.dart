import 'package:notes_app/layout/floataction.dart';
import 'package:flutter/material.dart';

import '../../layout/notelist.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  // List notes = [
  //   {
  //     'title': 'work',
  //     'image': 'W',
  //     'subtitle':
  //         'descripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my work',
  //   },
  //   {
  //     'title': 'Study',
  //     'image': 'S',
  //     'subtitle': 'descripe my Study',
  //   },
  //   {
  //     'title': 'play',
  //     'image': 'P',
  //     'subtitle': 'descripe my play',
  //   },
  //   {
  //     'title': 'chat',
  //     'image': 'C',
  //     'subtitle': 'descripe my chat',
  //   },
  //   {
  //     'title': 'chat',
  //     'image': 'C',
  //     'subtitle': 'descripe my chat',
  //   },
  //   {
  //     'title': 'chat',
  //     'image': 'C',
  //     'subtitle': 'descripe my chat',
  //   },
  //   {
  //     'title': 'chat',
  //     'image': 'C',
  //     'subtitle': 'descripe my chat',
  //   },
  //   {
  //     'title': 'chat',
  //     'image': 'C',
  //     'subtitle': 'descripe my chat',
  //   },
  // ]; List? notes;
  List notes = AllNotes().notes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Floating(context: context),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Notes'),
        leading: const Icon(
          Icons.note_alt,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              setState(() {});
            },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, i) {
            return listElements(i: i, notes: notes);
          }),
    );
  }
}
