import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  final String userName;
  const Detailpage({super.key, required this.userName});

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