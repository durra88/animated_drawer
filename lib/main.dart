import 'package:animated_drawer/screen/navigate_btw_home&menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/drawer_controller.dart';

void main() {
  Get.put<MyDrawerController>(MyDrawerController());
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuHomeNavigation(),
    );
  }
}
