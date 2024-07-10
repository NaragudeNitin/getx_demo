import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;

  final RxInt _y = 0.obs;
  RxInt get y => _y;

  final RxInt _z = 0.obs;
  RxInt get z => _z;

  void increaseX() {
    _x++;
    update();
    print("Incremented Value $x");
  }

  void decreaseX() {
    _x--;
    update();
    print("Decreased Value $x");
  }

  void increaseY() {
    _y.value++;
    print("Incremented y Value $y");
  }

  void decreaseY() {
    _y.value--;
    print("Decreased y Value $y");
  }

  void totalXY() {
    _z.value = x + _y.value;
    print("Total: $_z");
  }
}
