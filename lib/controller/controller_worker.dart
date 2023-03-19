import 'package:get/get.dart';

class WorkerController extends GetxController {
  RxInt count = 0.obs;

  onChange() => count++;

  @override
  void onInit() {
    // TODO: implement onInit
    /// Called every time `count1` changes.
    ever(count, (_) => print("$_ has been changed"));

    /// Called only first time the variable $_ is changed
    once(count, (_) => print("$_ was changed once"));

    /// Anti DDos - Called every time the user stops typing for 1 second, for example.
    debounce(count, (_) => print("debouce$_"), time: Duration(seconds: 1));

    /// Ignore all changes within 1 second.
    interval(count, (_) => print("interval $_"), time: Duration(seconds: 1));
    super.onInit();
  }
}
