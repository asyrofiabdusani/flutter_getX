import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_state_management/controller/controller_worker.dart';
import 'package:get/get.dart';

class WorkerPage extends StatelessWidget {
  final myController = Get.put(WorkerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text('Terjadi perubahan ${myController.count} kali')
                  .paddingOnly(bottom: 20, top: 20),
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              onChanged: (value) => myController.onChange(),
            )
          ],
        ),
      ),
    );
  }
}
