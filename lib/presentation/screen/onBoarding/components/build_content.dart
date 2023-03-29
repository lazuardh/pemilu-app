import 'package:flutter/material.dart';

class BuildContent extends StatelessWidget {
  const BuildContent({
    Key? key,
    required this.size,
    required this.images,
    required this.title,
    required this.subtitle,
    required this.content,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final String images;
  final String title;
  final String subtitle;
  final String content;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.05),
            child: SizedBox(
              width: size.width * 0.7,
              height: size.height * 0.35,
              child: PageView(
                children: [
                  Image.asset(images),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.07),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000)),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    content,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
