import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pemilihan_umum_apk/presentation/screen/cari/calon_screen.dart';
import 'package:pemilihan_umum_apk/presentation/screen/hasil/hasil_screen.dart';
import 'package:pemilihan_umum_apk/presentation/screen/profile/profile_screen.dart';
import 'package:pemilihan_umum_apk/presentation/screen/tentang/tentang_screen.dart';
import 'package:pemilihan_umum_apk/presentation/screen/voting/voting_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedItemIndex = 0;

  List<Widget> pages = <Widget>[
    const HasilScreen(),
    const CalonScreen(),
    const VotingScreen(),
    const ProfileScreen(),
    const TentangScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: pages.elementAt(_selectedItemIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              textSize: 12,
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 3,
              activeColor: const Color(0XFFFFFFFF),
              iconSize: 24,
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.015, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: const Color(0XFF214DEA),
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.auto_graph,
                  text: 'Hasil',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Cari',
                ),
                GButton(
                  icon: Icons.verified,
                  text: 'Voting',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
                GButton(
                  icon: Icons.apps_outage,
                  text: "Tentang",
                )
              ],
              selectedIndex: _selectedItemIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedItemIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  // Widget buildNavbarItems(Size size, IconData iconActive,
  //     IconData nonActiveIcon, String text, int index) {
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         _selectedItemIndex = index;
  //       });
  //     },
  //     child: SizedBox(
  //       height: 60,
  //       width: size.width / 5,
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           index == _selectedItemIndex
  //               ? Icon(
  //                   iconActive,
  //                   color: Colors.white,
  //                 )
  //               : Icon(
  //                   nonActiveIcon,
  //                   color: Colors.grey,
  //                 ),
  //           const SizedBox(
  //             height: 4,
  //           ),
  //           Text(text,
  //               style: const TextStyle(color: Colors.white, fontSize: 12))
  //         ],
  //       ),
  //     ),
  //   );
  // }
}

// buildNavbarItems(
//                     size, Icons.auto_graph_sharp, Icons.auto_graph, "Hasil", 0),
//                 buildNavbarItems(
//                     size, Icons.people_alt, Icons.people, "Dpt", 1),
//                 buildNavbarItems(
//                     size, Icons.verified, Icons.verified, "Voting", 2),
//                 buildNavbarItems(
//                     size, Icons.person, Icons.person, "profile", 3),
//                 buildNavbarItems(
//                     size, Icons.apps_outage, Icons.apps_outage, "Tentang", 4)