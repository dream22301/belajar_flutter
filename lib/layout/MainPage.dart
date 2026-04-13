import 'package:flutter/material.dart';
import 'package:xi_rpl/layout/DetailPage.dart';
import 'package:xi_rpl/layout/ProfilePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String Nama = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ini Homepage'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Center(
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(builder: (context) => ProfilePage(userName: Nama)));
            }, style: ElevatedButton.styleFrom(fixedSize: Size(150, 50)),
            child: Center(child: Text('Profile Page'))
            ),
          ),
          Center(
            child: SizedBox(
              width: 350,
              height: 100,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    Nama = value;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  hintText: 'Masukkan Nama Anda',
                  labelText: 'hanya sebuah tulisan text yang lewat',
                ),
                
              ),
            ),
          ),
          
          Center(
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(builder: (context) => const Detailpage()));
            }, style: ElevatedButton.styleFrom(fixedSize: Size(150, 50)),
            child: Center(child: Text('Detail Page'))
            ),
          ),
        ],
      ),
    );
  }
}