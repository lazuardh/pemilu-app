import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'build_avatar.dart';

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
    return Column(
      children: [
        SizedBox(
          width: size.width,
          height: size.height * 0.3,
          child: PageView(
            controller: controller,
            children: [
              BuildAvatar(size: size),
              BuildAvatar(size: size),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
          child: SmoothPageIndicator(
            controller: controller,
            count: 2,
            effect: const ExpandingDotsEffect(
              spacing: 5,
              dotColor: Colors.white,
              activeDotColor: Colors.white,
              dotWidth: 15,
              dotHeight: 8,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: size.width,
            height: size.height,
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45), topRight: Radius.circular(45)),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "NIK",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0XFF214DEA)),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Masukan NIK kamu',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.article_rounded,
                              color: Color(0XFF214DEA)),
                          isDense: false,
                          isCollapsed: false,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Nama Pemilih",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0XFF214DEA)),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Masukan nama kamu',
                          border: InputBorder.none,
                          prefixIcon:
                              Icon(Icons.person, color: Color(0XFF214DEA)),
                          isDense: false,
                          isCollapsed: false,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "TPS",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0XFF214DEA)),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Tempat pemilihan surat',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.add_location_alt,
                              color: Color(0XFF214DEA)),
                          isDense: false,
                          isCollapsed: false,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      width: size.width,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0XFF214DEA),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          "VOTING",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
