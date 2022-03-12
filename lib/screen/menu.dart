import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/drawer_controller.dart';
import 'package:get/get.dart';

import 'otherMenuScreen.dart/notification.dart';
import 'otherMenuScreen.dart/payment.dart';

class MenuScreen extends GetView<MyDrawerController> {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff374A9B), //0xFF1E55C4
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
              children: [
                DrawerHeader(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 0,
                        ),
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundColor:
                              const Color.fromARGB(255, 5, 109, 201),
                          child: ClipRRect(
                            child: Image.asset("images/girl.jpg",
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'Durra Hassan ',
                          style: GoogleFonts.jetBrainsMono(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                controller.toggleDrawer();
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Home ',
                      style: GoogleFonts.abel(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Get.to(() => const PayementScreen());
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.monetization_on,
                      color: Colors.white,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Payement ',
                      style: GoogleFonts.abel(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Get.to(() => const NotificationScreen());
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Notification ',
                      style: GoogleFonts.abel(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.help_sharp,
                      color: Colors.white,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Help ',
                      style: GoogleFonts.abel(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.info,
                      color: Colors.white,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'About ',
                      style: GoogleFonts.abel(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),
            // Divider(thickness: 0.3, color: Colors.white.withOpacity(0.2)),

            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Rate us ',
                      style: GoogleFonts.abel(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            //?--------------------------------------------------------------------------LogOUt
            InkWell(
              onTap: () {
                Get.to(() => const PayementScreen());
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Log out ',
                      style: GoogleFonts.abel(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
