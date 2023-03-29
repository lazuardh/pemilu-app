import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int? detail;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Cari..',
                border: InputBorder.none,
                isCollapsed: false),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.05),
                decoration: BoxDecoration(
                  color: const Color(0XFF19A7CE),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: size.width,
                height: detail != null && detail == index
                    ? size.height * 0.26
                    : size.height * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text('H'),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: size.width * 0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Habbyan Lazuard Haryadi",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "Partai Demokrat",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          if (isSelected == false) ...[
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
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
                                },
                                child: Container(
                                  width: size.width * 0.11,
                                  height: size.height * 0.05,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/icon/box.png'),
                                        scale: 1),
                                  ),
                                ),
                              ),
                            )
                          ]
                        ],
                      ),
                    ),
                    if (detail != null && detail == index) ...[
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: const [
                                Text(
                                  "No, Urut",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Motivasi",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                Text(
                                  "Melakukan Pengawalan setiap agenda program pemerintahan kota",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Target Sasaran",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Pengawasan Pengesahan sesuai dengan perundang undangan ketika telah menjadi anggota DPR/DRPD kota malang",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      )
                    ]
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
