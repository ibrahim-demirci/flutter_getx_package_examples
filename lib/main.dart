import 'package:flutter/material.dart';
import 'package:getx_package/controller/counter_controller.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(title: 'Material App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  // This code is add controller to FULL WIDGET TREE.
  final CounterController _controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print('Stateless build worked');
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            onPressed: () {
              _controller.increase();
              Get.showSnackbar(GetBar(
                title: 'Default SnackBar',
                message: 'Arttırıldı',
                isDismissible: true,
              ));

              print(_controller.count);
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: '2',
            onPressed: () {
              _controller.decrease();
              Get.snackbar(
                'SnackBar',
                'Azaltıldı',
                backgroundColor: Colors.teal,
              );
              print(_controller.count);
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: '3',
            onPressed: () {
              Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            child: Icon(Icons.track_changes),
          ),
          FloatingActionButton(
            heroTag: '4',
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  // This code below find the Controller on widget tree.
  CounterController _findController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GetX<CounterController>(
          builder: (_controller2) => Text(
            ' ${_controller2.count} times you click',
            style: TextStyle(fontSize: 32),
          ),
        ),
        Obx(
          () => Text(
            ' ${_findController.count} times you click',
            style: TextStyle(fontSize: 32),
          ),
        ),
        Text(
          'Selam',
          style: TextStyle(fontSize: 32),
        )
      ],
    );
  }
}
