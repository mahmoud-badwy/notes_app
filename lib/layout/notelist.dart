import 'package:flutter/material.dart';

listElements({
  required i,
  required notes,
}) {
  return Card(
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Text('${notes[i]['image']}'),
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text(
              '${notes[i]['title']}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              style: const TextStyle(
                fontSize: 15,
              ),
              '${notes[i]['subtitle']}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.edit),
        ),
      ],
    ),
  );
}

class AllNotes {
  List notes = [
    {
      'title': 'work',
      'image': 'W',
      'subtitle':
          'descripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my workdescripe my work',
    },
    {
      'title': 'Study',
      'image': 'S',
      'subtitle': 'descripe my Study',
    },
    {
      'title': 'play',
      'image': 'P',
      'subtitle': 'descripe my play',
    },
    {
      'title': 'chat',
      'image': 'C',
      'subtitle': 'descripe my chat',
    },
    {
      'title': 'chat',
      'image': 'C',
      'subtitle': 'descripe my chat',
    },
    {
      'title': 'chat',
      'image': 'C',
      'subtitle': 'descripe my chat',
    },
    {
      'title': 'chat',
      'image': 'C',
      'subtitle': 'descripe my chat',
    },
    {
      'title': 'chat',
      'image': 'C',
      'subtitle': 'descripe my chat',
    },
  ];
}
