import 'package:pemilihan_umum_apk/presentation/route/page_name.dart';
import 'package:pemilihan_umum_apk/presentation/screen/Register/register.dart';
import 'package:pemilihan_umum_apk/presentation/screen/login/login_screen.dart';
import 'package:pemilihan_umum_apk/presentation/screen/navigation/navigation.dart';
import 'package:pemilihan_umum_apk/presentation/screen/onBoarding/on_boarding_screen.dart';

class AppPage {
  static final pages = {
    RouteName.onboarding: (context) => const OnBoardingScreen(),
    RouteName.login: (context) => const LoginScreen(),
    RouteName.register: (context) => const RegisterScreen(),
    RouteName.navigation: (context) => const Navigation(),
  };
}
