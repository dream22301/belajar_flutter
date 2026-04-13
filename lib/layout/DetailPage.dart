import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  final String userName;
  final String Umur;
  const Detailpage({super.key, required this.userName, required this.Umur});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              'Nama kamu pasti: $userName dan umur kamu pasti $Umur'
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