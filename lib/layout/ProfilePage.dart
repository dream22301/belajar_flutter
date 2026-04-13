import 'package:flutter/material.dart';
import 'package:xi_rpl/layout/DetailPage.dart';


class ProfilePage extends StatefulWidget {
  final String userName;
  const ProfilePage({super.key, required this.userName});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String Umur = '';
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page'),),
      body: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: 'Masukkan Umur Anda',
                        labelText: 'Input Umur'
                      ), 
                      onChanged: (value) {
                        setState(() {
                          Umur = value;
                        });
                      },
                  ),
                ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Detailpage(userName: widget.userName, Umur: Umur,)));
              },
              child: SizedBox(
                width: 100,
                height: 20,
                child: Center(
                  child: Text('Next'),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                width: 100,
                height: 20,
                child: Center(
                  child: Text('kembali'),
                ),
              ),
            )
          ],
        ),
    );
  }
}

