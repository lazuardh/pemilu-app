import 'package:flutter/material.dart';
import 'package:pemilihan_umum_apk/presentation/screen/cari/components/body.dart';

class CalonScreen extends StatelessWidget {
  const CalonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF214DEA),
        elevation: 0,
        title: const Text("Calon DPRD Kota Malang"),
      ),
      body: const Body(),
    );
  }
}
