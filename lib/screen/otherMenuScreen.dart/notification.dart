import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
          icon: const FaIcon(
            (FontAwesomeIcons.bars),
            color: Color(0xff7C93A6),
          ),
          //!on press nav
          onPressed: () {},
        )),
        body: Container(
          color: Colors.green,
          child: const Center(
            child: Text("Notification"),
          ),
        ));
  }
}
