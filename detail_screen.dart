import 'package:flutter/material.dart';

class MyDetailScreen extends StatelessWidget {
  final int index;

  const MyDetailScreen({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Elemento $index'),
      ),
      body: Center(
        child: Text('Detalles del Elemento $index'),
      ),
    );
  }
}
