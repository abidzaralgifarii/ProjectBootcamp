import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menumate/app/routes/app_pages.dart';
import '../controllers/settings_controller.dart';
import 'package:menumate/app/modules/settings/widget/widget.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2D1D1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Settings',
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  WidgetCustom(
                    title: 'Profile Settings',
                    text: 'Settings Regarding Your Profile',
                    image: 'assets/icon/profil_icon.png',
                  ),
                  WidgetCustom(
                    title: 'Recipe Settings',
                    text: 'Choose your favourite Recipe',
                    image: 'assets/icon/note_icon.png',
                  ),
                  WidgetCustom(
                    title: 'Notifications',
                    text: 'When would you like to be notified',
                    image: 'assets/icon/notif_icon.png',
                  ),
                  WidgetCustom(
                    title: 'Subscriptions',
                    text: 'Currently, you are in Starter Plan',
                    image: 'assets/icon/folder_icon.png',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Other',
                    style: GoogleFonts.poppins(
                        fontSize: 26, fontWeight: FontWeight.w400),
                  ),
                  WidgetCustom(
                    title: 'Bug report',
                    text: 'Report bugs very easy',
                    image: 'assets/icon/bug_icon.png',
                  ),
                  WidgetCustom(
                    title: 'Share the app',
                    text: 'Share on social media networks',
                    image: 'assets/icon/share_icon.png',
                  ),
                  WidgetCustom(
                    title: 'LogOut',
                    text: 'Log Out & Stay Safe',
                    image: 'assets/icon/logout.png',
                    onTap: () {
                      Get.offAllNamed(Routes.SPLASHSCREEN);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
