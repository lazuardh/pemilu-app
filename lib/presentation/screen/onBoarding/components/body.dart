import 'package:flutter/material.dart';
import 'package:pemilihan_umum_apk/presentation/route/page_name.dart';
import 'package:pemilihan_umum_apk/presentation/screen/onBoarding/components/build_content.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController controller = PageController();
  int index = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.46,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: size.height * 0.06),
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(size.height * 0.05),
                        topRight: Radius.circular(size.height * 0.05),
                      )),
                ),
              ),
            ],
          ),
          PageView(
            controller: controller,
            children: [
              BuildContent(
                onTap: () {
                  if (index == 0) {
                    setState(() {
                      index++;
                    });
                    controller.animateToPage(index,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn);
                  } else {
                    setState(() {
                      index = 1;
                    });
                    controller.animateToPage(index,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn);
                  }
                },
                size: size,
                images: "assets/images/aset1.png",
                title: "Selamat Datang,\nDi Aplikasi Pemilu",
                subtitle: "Apakah kamu tau aplikasi pemilu?",
                content:
                    "Sebuah sistem yang digunakan untuk memeudahkan masyarakat dalam melakukan pemilihan umum",
              ),
              BuildContent(
                onTap: () {
                  if (index == 1) {
                    setState(() {
                      index++;
                    });
                    controller.animateToPage(index,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn);
                  } else {
                    setState(() {
                      index = 2;
                    });
                    controller.animateToPage(index,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn);
                  }
                },
                size: size,
                images: "assets/images/aset2.png",
                title: "Selamat Datang,\nDi Aplikasi Pemilu",
                subtitle: "Apakah kamu tau aplikasi pemilu?",
                content:
                    "Sebuah sistem yang digunakan untuk memeudahkan masyarakat dalam melakukan pemilihan umum",
              ),
              BuildContent(
                onTap: () {
                  if (index == 2) {
                    setState(() {
                      index++;
                    });
                    controller.animateToPage(index,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn);
                  } else {
                    setState(() {
                      index = 3;
                    });
                    controller.animateToPage(index,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn);
                  }
                },
                size: size,
                images: "assets/images/aset3.png",
                title: "Selamat Datang,\nDi Aplikasi Pemilu",
                subtitle: "Apakah kamu tau aplikasi pemilu?",
                content:
                    "Sebuah sistem yang digunakan untuk memeudahkan masyarakat dalam melakukan pemilihan umum",
              )
            ],
          ),
          Positioned(
            bottom: size.height * 0.03,
            left: size.width * 0.1,
            child: SizedBox(
              height: size.height * 0.05,
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  spacing: 5,
                  dotColor: Color(0XFF5D5D5E),
                  activeDotColor: Color(0XFF19A7CE),
                  dotWidth: 12,
                  dotHeight: 8,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.03,
            right: size.width * 0.1,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.login);
              },
              child: Container(
                width: size.width * 0.35,
                decoration: BoxDecoration(
                    color: const Color(0XFF19A7CE),
                    borderRadius: BorderRadius.circular(25)),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      "Ayo Mulai",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
