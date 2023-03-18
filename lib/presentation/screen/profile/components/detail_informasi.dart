import 'package:flutter/material.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //card Detail Information
          SizedBox(
            width: size.width,
            child: const Text(
              'Detail Information',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: size.width,
              // height: size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    blurRadius: 6,
                    offset: Offset(1, 2),
                    spreadRadius: 2,
                    color: Color.fromARGB(255, 227, 225, 225),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      'Full Name',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      'Habbyan Lazuard',
                      style: TextStyle(color: Color(0XFF000000), fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                      top: 10,
                    ),
                    child: Text(
                      'Tempat Pemilihan Umum',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      'Kecamatan Lowokwaru',
                      style: TextStyle(color: Color(0XFF000000), fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                      top: 10,
                    ),
                    child: Text(
                      'Id Number',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      '894 7763237',
                      style: TextStyle(color: Color(0XFF000000), fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          //card Contact
          SizedBox(
            width: size.width,
            child: const Text(
              'Contact',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: size.width,
              // height: size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    blurRadius: 6,
                    offset: Offset(1, 2),
                    spreadRadius: 2,
                    color: Color.fromARGB(255, 227, 225, 225),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      'habbyan@gmail.com',
                      style: TextStyle(color: Color(0XFF000000), fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                      top: 10,
                    ),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      '+62 873283023',
                      style: TextStyle(color: Color(0XFF000000), fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              width: size.width * 0.3,
              decoration: BoxDecoration(
                color: const Color(0xFFF4452D),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.logout,
                    color: Color(0XFFffffff),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Log Out',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0XFFFFFFFF), fontWeight: FontWeight.w500),
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
