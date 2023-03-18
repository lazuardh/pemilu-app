import 'package:flutter/material.dart';

import 'detail_informasi.dart';

class BuildScrollContent extends StatelessWidget {
  const BuildScrollContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      maxChildSize: 1,
      minChildSize: 0.65,
      builder: (context, controller) => ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(35),
          ),
          child: Container(
            padding: EdgeInsets.only(
              top: 10,
              left: size.width * 0.07,
              right: size.width * 0.07,
            ),
            color: Colors.white,
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.005,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        color: const Color(0XFF214DEA),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  const DetailInfo()
                ],
              ),
            ),
          )),
    );
  }
}
