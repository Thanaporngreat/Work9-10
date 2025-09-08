import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/page/profile_page.dart';
import 'page/playerselection.dart';
import 'page/teams_page.dart';
import 'state/team_controller.dart';

void main() {
  Get.put(TeamController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokemon Team Builder',
theme: ThemeData(
  colorSchemeSeed: const Color.fromARGB(255, 122, 221, 137),
  useMaterial3: true,
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontWeight: FontWeight.w700, letterSpacing: .5),
    bodyMedium: TextStyle(fontSize: 13),
  ),
  cardTheme: CardThemeData(   // <-- แก้ตรงนี้
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
),

      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const PlayerSelection()), // หน้าใหม่
        GetPage(name: '/teams', page: () => const TeamsPage()),
        GetPage(
    name: '/profile',
    page: () => const ProfilePage(),
    transition: Transition.rightToLeft, // ใส่เอฟเฟกต์ได้
  ),
      ],
    );
  }
}
