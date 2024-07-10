import 'package:get/get.dart';
import 'package:get_x_example/controllers/list_controller.dart';
import 'package:get_x_example/controllers/tab_controller.dart';

Future<void> init()async{

     Get.put(TapController());

   Get.put(ListController());
}