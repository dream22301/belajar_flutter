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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Ini Homepage'),),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.05,
            width: screenWidth * 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text('Profile Page'),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.7,
            width: screenWidth * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                SizedBox(
                  width: screenWidth * 0.8,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        Nama = value;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Masukkan Nama Anda',
                      labelText: 'Input Nama'
                    ), 
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute<void>(builder: (context) => Detailpage(userName: Nama,)));
                  },
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: Center(child: Text('Detail Page')),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}