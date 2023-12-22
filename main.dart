import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ListView Challenge'),
      ),
      body: MyTabBarView(),
    );
  }
}

class MyTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: 'Lista'),
              Tab(icon: Icon(Icons.details), text: 'Detalles'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MyListView(),
            MyDetailScreen(),
          ],
        ),
      ),
    );
  }
}

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
