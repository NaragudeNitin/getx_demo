import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_example/controllers/list_controller.dart';
import 'package:get_x_example/controllers/tab_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    ListController listController = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: double.maxFinite,
                    height: 100,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      color: const Color(0XFF89dad0),
                    ),
                    child: Center(
                      child: Text(
                        "Total Value: ${Get.find<TapController>().z}",
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: double.maxFinite,
                    height: 100,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      color: const Color(0XFF89dad0),
                    ),
                    child: Center(
                      child: Text(
                        "Y value: ${Get.find<TapController>().y.value}",
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // GestureDetector(
            //   onTap: () {
            //     Get.to(() => const HomePage());
            //   },
            //   child: Container(
            //     width: double.maxFinite,
            //     height: 100,
            //     padding: const EdgeInsets.all(16.0),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(
            //         20,
            //       ),
            //       color: const Color(0XFF89dad0),
            //     ),
            //     child: Center(
            //       child: Text(
            //         "X value: ${Get.find<TapController>().x}",
            //         style: const TextStyle(
            //           fontSize: 20,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            GestureDetector(
              onTap: () {
                // controller.increaseX();
                Get.find<TapController>().increaseY();
              },
              child: Container(
                margin: const EdgeInsets.only(top: 16),
                width: double.maxFinite,
                height: 100,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: const Color(0XFF89dad0),
                ),
                child: const Center(
                  child: Text(
                    "Increase Y",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().totalXY();
              },
              child: Container(
                margin: const EdgeInsets.only(top: 16),
                width: double.maxFinite,
                height: 100,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: const Color(0XFF89dad0),
                ),
                child: const Center(
                  child: Text(
                    "Total X+Y",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                listController.setValues(Get.find<TapController>().z.value);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 16),
                width: double.maxFinite,
                height: 100,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: const Color(0XFF89dad0),
                ),
                child: const Center(
                  child: Text(
                    "Adding item to list",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
