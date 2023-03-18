import 'package:flutter/material.dart';
import 'package:pemilihan_umum_apk/presentation/route/page_name.dart';
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
                height: size.height * 0.4,
                child: PageView(
                  controller: controller,
                  children: [
                    Image.asset("assets/images/onBorading3.png"),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      color: const Color(0XFFFFFFFF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(size.height * 0.05),
                        topRight: Radius.circular(size.height * 0.05),
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.07),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Selamat Datang,\nDi Aplikasi Pemilu!",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000)),
                        ),
                        SizedBox(height: size.height * 0.02),
                        const Text(
                          "Apakah Kamu tau aplikasi pemilu ?",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        const Text(
                          "sebuah system yang digunakan untuk memudahkan masyarakat dalam melakukan pemilihan umum.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                  activeDotColor: Color(0XFF214DEA),
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
                    color: const Color(0XFF214DEA),
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
