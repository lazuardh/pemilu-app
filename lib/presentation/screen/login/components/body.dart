import 'package:flutter/material.dart';
import 'package:pemilihan_umum_apk/presentation/route/page_name.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: Image.asset("assets/logo/logos.png"),
          ),
          SizedBox(
            height: size.height * 0.08,
          ),
          SizedBox(
            width: size.width * 0.5,
            height: size.height * 0.3,
            child: Image.asset("assets/images/login-image.png"),
          ),
          Expanded(
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                color: const Color(0XFFFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(size.height * 0.05),
                  topRight: Radius.circular(size.height * 0.05),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.06,
                    vertical: size.height * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, RouteName.onboarding);
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Color(0XFF214DEA),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Color(0XFFFFFFFF),
                              size: 18,
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * 0.02),
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF214DEA)),
                        )
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    const Text(
                      "Email kamu",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF000000)),
                    ),
                    Container(
                      width: size.width,
                      height: size.height * 0.06,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(204, 193, 203, 240),
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle),
                      child: const TextField(
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          counterStyle: TextStyle(color: Colors.grey),
                          hintText: "your email",
                          hintStyle: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.grey),
                        ),
                      ),
                    ),
                    const Text(
                      "Password kamu",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF000000)),
                    ),
                    Container(
                      width: size.width,
                      height: size.height * 0.06,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(204, 193, 203, 240),
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle),
                      child: const TextField(
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off),
                          isCollapsed: false,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          counterStyle: TextStyle(color: Colors.grey),
                          hintText: "type password",
                          hintStyle: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, RouteName.navigation, (route) => false);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            color: const Color(0XFF214DEA),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            "Log In",
                            style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Belum punya Account?",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF000000)),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      RouteName.register, (route) => false);
                                },
                                child: const Text(
                                  "Register",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0XFF214DEA)),
                                ))
                          ],
                        ))
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
