import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menumate/app/routes/app_pages.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE2D1D1),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image/logo.png',
                  width: 384,
                  height: 375,
                ),
                // SizedBox(height: 5),
                Text(
                  'MenuMate',
                  style: GoogleFonts.lexendGiga(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.REGISTER);
                  },
                  child: Text(
                    'GetStarted',
                    style: GoogleFonts.poppins(color: Colors.white,
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(128, 150, 20, 20),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 44, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
