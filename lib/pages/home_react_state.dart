import 'package:flutter/material.dart';
import 'package:flutter_state_management/controller/controller_react_state.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeReactState extends StatelessWidget {
  final MyController = Get.put(ReactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 50,
              ),
              Obx(
                () => Text('${MyController.count}'),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => MyController.decrement(),
                    child: Text('Remove'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () => MyController.increment(),
                    child: Text('Add'),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Obx(
                  () => Text('${MyController.valString}'),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => MyController.changeString(),
                      child: Text('Change String'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Obx(
                  () => Text('${MyController.valBool}'),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => MyController.changeBool(),
                      child: Text('Change Value of Boolean'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Obx(
                  () => Text('${MyController.valList}'),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => MyController.addList(),
                      child: Text('Add List Value'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Obx(
                  () => Text('${MyController.valSet}'),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => MyController.addSet(),
                      child: Text('Add Set Value'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Obx(
                  () => Text('${MyController.valMap}'),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => MyController.changeMap(),
                      child: Text('Change Map'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
