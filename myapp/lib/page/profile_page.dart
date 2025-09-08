import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments; // ถ้าส่งค่ามา
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('ธนพร 65114540259 ${args ?? ''}'),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Get.back(result: 'updated'),
              child: const Text('Back with result'),
            ),
          ],
        ),
      ),
    );
  }
}
