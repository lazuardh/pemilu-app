import 'package:flutter/material.dart';
import 'package:pemilihan_umum_apk/presentation/route/page_name.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int? detail;
  bool isSelected = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.05, horizontal: size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Good Morning",
                      style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Habbyan Lazuard",
                      style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RouteName.login, (route) => false);
                  },
                  child: Container(
                    width: 38,
                    height: 38,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0XFF0085FF)),
                    child: const Icon(
                      Icons.logout,
                      color: Color(0XFFFFFFFF),
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                color: const Color(0XFFF6F4F4),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(size.height * 0.04),
                  topLeft: Radius.circular(size.height * 0.04),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/logo/logo_kecil.png"),
                    SizedBox(height: size.height * 0.04),

                    //card
                    Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        color: const Color(0XFF19A7CE),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            ///pemilihan umum
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: const Color(0XFF05FF00),
                                  child: Container(
                                    width: 33,
                                    height: 33,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0XFFFFFFFF)),
                                    child: const Icon(
                                      Icons.inventory,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  "PEMILIHAN UMUM DPRD",
                                  style: TextStyle(
                                      color: Color(0XFFFFFFFF),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.04),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      "600.000",
                                      style: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "suara masuk",
                                      style: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(width: size.width * 0.02),
                                Image.asset("assets/icon/box-sedang.png")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    ///detail
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.02),
                      child: Row(
                        children: const [
                          Icon(Icons.info),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "Detail calon DPRD",
                            style: TextStyle(
                                color: Color(0XFF000000),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    //card

                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(245, 223, 220, 220),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: size.width,
                            decoration: BoxDecoration(
                              color: const Color(0XFFFFFEFE),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      width: 55,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color: const Color(0XFF524E4E),
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Icon(
                                        Icons.person,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Habbyan Lazuard",
                                          style: TextStyle(
                                              color: Color(0XFF000000),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Partai Demokrat",
                                          style: TextStyle(
                                            color: Color(0XFF524E4E),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (isSelected == false) ...[
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: (() {
                                          if (detail == null) {
                                            setState(() {
                                              detail = index;
                                            });
                                          } else if (detail != null &&
                                              detail == index) {
                                            setState(() {
                                              detail = null;
                                            });
                                          }
                                        }),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            color: Color(0XFF292D32),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            detail != null && detail == index
                                                ? Icons.expand_more
                                                : Icons.arrow_forward_ios,
                                            size: 15,
                                            color: const Color(0XFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ],
                              ),
                            ),
                          ),
                          if (detail != null && detail == index) ...[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "150.000",
                                    style: TextStyle(
                                        color: Color(0XFF214DEA),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(width: 5.0),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0XFF05FF00),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Text(
                                        "pemilih",
                                        style: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
