import 'package:flutter/material.dart';
import 'package:getx_package/controller/counter_controller.dart';
import 'package:getxfire/getxfire.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  // This code is add controller to FULL WIDGET TREE.
  final CounterController _controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            onPressed: () {
              _controller.increase();
              print(_controller.count);
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: '2',
            onPressed: () {
              _controller.decrease();
              print(_controller.count);
            },
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
