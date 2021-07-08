import 'package:flutter/material.dart';
import 'package:getx_package/controller/counter_controller.dart';
import 'package:getxfire/getxfire.dart';

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
