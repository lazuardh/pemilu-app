import 'package:flutter/material.dart';
import 'package:pemilihan_umum_apk/presentation/screen/login/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0XFF214DEA),
      body: Body(),
    );
  }
}
