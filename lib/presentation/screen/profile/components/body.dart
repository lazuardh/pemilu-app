import 'package:flutter/material.dart';

import 'build_avatar.dart';
import 'build_scroll.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          child: Container(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 10,
            ),
            color: const Color(0XFF19A7CE),
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                BuildCircleAvatar(),
              ],
            ),
          ),
        ),
        const BuildScrollContent(),
      ],
    );
  }
}
