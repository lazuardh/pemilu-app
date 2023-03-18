import 'package:flutter/material.dart';
import 'package:pemilihan_umum_apk/presentation/screen/voting/components/body.dart';

class VotingScreen extends StatelessWidget {
  const VotingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF214DEA),
      appBar: AppBar(
        backgroundColor: const Color(0XFF214DEA),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Voting",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
