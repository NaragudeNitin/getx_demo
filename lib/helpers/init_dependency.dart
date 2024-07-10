import 'package:get/get.dart';
import 'package:get_x_example/controllers/list_controller.dart';
import 'package:get_x_example/controllers/tab_controller.dart';

class InitDependency implements Bindings { /// if we do dependecy here we dont need to initialize flutter binding[]
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(TapController());

    Get.put(ListController());
  }
}
