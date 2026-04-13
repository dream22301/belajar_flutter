import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page Ini'),),
      body: Center(
        child: Column(
          children: [
            Text('Ini adalah Profile Page'),
            ElevatedButton(child: Text('Kembali Ke Halaman Awal'), onPressed: () {
              Navigator.pop(context);
            },)
          ],
        ),
      ),
    );
  }
}

