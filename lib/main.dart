import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: '2',
            onPressed: () {},
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: '3',
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: '4',
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Merhaba',
              style: TextStyle(fontSize: 32),
            ),
            Text(
              'Selam',
              style: TextStyle(fontSize: 32),
            )
          ],
        ),
      ),
    );
  }
}
