import 'package:flutter/material.dart';

class BuildAvatar extends StatelessWidget {
  const BuildAvatar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: size.width * 0.4,
            height: size.height * 0.24,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/fotoMe.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        const Text(
          'Habbyan Lazuard Haryadi',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Text(
          'Partai Demokrat',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
