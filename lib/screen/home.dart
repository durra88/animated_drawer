import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get.dart';
import '../controller/drawer_controller.dart';

class HomeScreen extends GetView<MyDrawerController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
            icon: const FaIcon(
              (FontAwesomeIcons.bars),
              color: Colors.white,
            ),
            //!on press nav
            onPressed: () {
              controller.toggleDrawer();
            },
          )),
          body: Container(
              child: const Center(
                  child: Text(
            "Home",
            style: TextStyle(
              fontSize: 50,
            ),
          ))
              //color: Colors.blue,
              )),
    );
  }
}
