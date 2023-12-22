import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return MyListItem(index: index);
      },
    );
  }
}

class MyListItem extends StatelessWidget {
  final int index;

  const MyListItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Elemento $index'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyDetailScreen(index: index)),
        );
      },
    );
  }
}
