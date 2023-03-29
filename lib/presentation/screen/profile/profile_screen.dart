import 'package:flutter/material.dart';
import 'package:pemilihan_umum_apk/presentation/screen/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF19A7CE),
        elevation: 0,
        title: const Text(
          "Profil",
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
