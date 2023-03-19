import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_state_management/controller/controller_home.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final MyController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Center(
            child: Column(
              children: [
                Text('Reactive State Management'),
                Obx(
                  () => Text(
                    '${MyController.countReact}',
                    style: TextStyle(fontSize: 30),
                  ).paddingAll(20),
                ),
                ElevatedButton(
                  onPressed: () {
                    MyController.increment();
                  },
                  child: Text('Plus Button'),
                )
              ],
            ),
          ),
          Text('=========================').paddingAll(50),
          GetBuilder<HomeController>(
            builder: (SimpleController) => Center(
              child: Column(
                children: [
                  Text('Simple State Management'),
                  Text(
                    '${SimpleController.countSimple}',
                    style: TextStyle(fontSize: 30),
                  ).paddingAll(20),
                  ElevatedButton(
                    onPressed: () {
                      SimpleController.incrementSimple();
                    },
                    child: Text('Plus Button'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      SimpleController.updateStateSimple();
                    },
                    child: Text('Update State'),
                  ).paddingAll(20)
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
