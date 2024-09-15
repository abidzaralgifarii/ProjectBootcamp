import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menumate/app/modules/home/widget/widget.dart';
import 'package:menumate/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2D1D1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: 'Hallo!\n',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Confused About Eat To Cook?',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.settings,
                            size: 50,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.SETTINGS);
                          })
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 38,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Search',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.mic,
                          color: Colors.black,
                          size: 38,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Category',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Category(
                                  image: 'assets/image/kategori1.png',
                                  label: 'Food'),
                              SizedBox(width: 20),
                              Category(
                                  image: 'assets/image/kategori2.png',
                                  label: 'Drink'),
                              SizedBox(width: 20),
                              Category(
                                  image: 'assets/image/kategori3.png',
                                  label: 'Snack'),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Divider(
                          color: Colors.black,
                          height: 4,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Popular Recipe',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Popular(
                                image: 'assets/image/resep1.png',
                                label: 'Sushi'),
                            SizedBox(height: 20),
                            Popular(
                                image: 'assets/image/resep2.png',
                                label: 'Tomyum'),
                            SizedBox(height: 20),
                            Popular(
                                image: 'assets/image/resep3.png',
                                label: 'Kentang Balado'),
                          ],
                        ),
                      ),
                    ],
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
