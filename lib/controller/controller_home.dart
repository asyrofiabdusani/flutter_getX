import 'package:get/get.dart';

class HomeController extends GetxController {
  var countReact = 0.obs;
  increment() {
    countReact = countReact + 1;
  }

  var countSimple = 0;
  incrementSimple() {
    countSimple = countSimple + 1;
  }

  updateStateSimple() {
    update();
  }
}
