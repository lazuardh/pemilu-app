import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aplikasi Pemilihan Umum adalah aplikasi untuk melakukan pemilihan umum pada tingkat DPRD/Kabupaten Malang. dalam aplikasi ini kamu dapat:",
            style: TextStyle(color: Colors.grey[700]),
            textAlign: TextAlign.justify,
          ),
          Text(
            "- Data Pemilih Tetap Kota Malang",
            style: TextStyle(color: Colors.grey[700]),
            textAlign: TextAlign.justify,
          ),
          Text(
            "- Melakukan Voting terhadap Calon DPRD Kota malang",
            style: TextStyle(color: Colors.grey[700]),
            textAlign: TextAlign.justify,
          ),
          Text(
            "- Melihat Hasil Voting calon anggota DPRD Kota malang",
            style: TextStyle(color: Colors.grey[700]),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 50),
          Text(
            "Data Aplikasi Pemilihan umum ini dikumpulkan dari sumber -sumber terpercaya antara lain:",
            style: TextStyle(color: Colors.grey[700]),
            textAlign: TextAlign.justify,
          ),
          Text(
            "- KPU",
            style: TextStyle(color: Colors.grey[700]),
            textAlign: TextAlign.justify,
          ),
          Text(
            "http://kpud-malangkota.go.id/",
            style: TextStyle(color: Colors.blue[800]),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 50),
          Text(
            "Ayok sampaikan suara kamu untuk calon DPRD yang pro kepada rakyat",
            style: TextStyle(color: Colors.grey[700]),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
