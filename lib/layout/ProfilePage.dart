import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  final String userName;
  const ProfilePage({super.key, required this.userName});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page Ini'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nama kamu pasti: $userName'
            ),
            ElevatedButton(child: Text('Kembali Ke Halaman Awal'), onPressed: () {
              Navigator.pop(context);
            },)
          ],
        ),
      ),
    );
  }
}

