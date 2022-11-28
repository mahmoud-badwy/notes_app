import 'package:notes_app/layout/notelist.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  TextEditingController titlecontroll = TextEditingController();

  TextEditingController descripecontroll = TextEditingController();

  List notes = AllNotes().notes;
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        title: const Text("Add Note,"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        height: 600,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: titlecontroll,
                decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  label: Text('Title'),
                  prefixIcon: Icon(Icons.note),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: descripecontroll,
                decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  label: Text('description'),
                  prefixIcon: Icon(Icons.description),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 175,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: MaterialButton(
                  onPressed: () {
                    notes.addAll(
                      [
                        {
                          'title': titlecontroll.text,
                          'image': titlecontroll.text.characters.first,
                          'subtitle': descripecontroll.text,
                        }
                      ],
                    );
                    titlecontroll.text = '';
                    descripecontroll.text = '';
                  },
                  child: const Text(
                    'ADD NOTE',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
