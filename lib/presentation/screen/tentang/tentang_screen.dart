import 'package:flutter/material.dart';
import 'package:pemilihan_umum_apk/presentation/screen/tentang/components/body.dart';

class TentangScreen extends StatelessWidget {
  const TentangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF19A7CE),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.1),
          child: Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icon/box-icon.png"),
                SizedBox(width: size.width * 0.04),
                Column(
                  children: const [
                    Text(
                      "PEMILIHAN UMUM",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "BETA VERSION",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
