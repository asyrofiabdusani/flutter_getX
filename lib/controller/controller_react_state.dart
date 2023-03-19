import 'package:get/get.dart';

class ReactController extends GetxController {
  RxInt count = 0.obs;
  decrement() => count--;
  increment() => count++;

  RxString valString = 'String value'.obs;
  changeString() {
    valString.value = 'Ganti value';
  }

  RxBool valBool = true.obs;
  changeBool() {
    valBool.toggle();
  }

  int nextVal = 4;
  RxList valList = [1, 2, 3].obs;
  addList() {
    valList.add(nextVal);
    nextVal++;
  }

  int nextValSet = 5;
  RxSet valSet = {1, 2, 3, 4}.obs;
  addSet() {
    valSet.add(nextValSet);
    nextValSet++;
  }

  String newVal = 'Value baru';
  RxMap valMap = {'id': 1, 'val': 'Value lama'}.obs;
  changeMap() {
    valMap['val'] = newVal;
  }
}
