import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get_x_example/controllers/tab_controller.dart';
import 'package:get_x_example/first_page.dart';
import 'package:get_x_example/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<TapController>(
              builder: (_) => Container(
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
                    controller.x.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.increaseX();
              },
              child: Container(
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
                    "Tap",
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
                Get.to(() => const FirstPage());
              },
              child: Container(
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
                    "Go to first Page",
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
                Get.to(() => const SecondPage());
              },
              child: Container(
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
                    "Go to second page",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
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
                    "Tap",
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
