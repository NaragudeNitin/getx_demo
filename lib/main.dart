import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_example/helpers/init_dependency.dart';
import 'package:get_x_example/home_page.dart';
// import 'helpers/init_controllers.dart' as di;

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized(); ///removed because added initalized property in material app
  // await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDependency(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
