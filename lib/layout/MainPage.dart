import 'package:flutter/material.dart';
import 'package:xi_rpl/layout/ProfilePage.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ini Homepage'),),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute<void>(builder: (context) => const ProfilePage()));
        }, style: ElevatedButton.styleFrom(fixedSize: Size(150, 50)),
        child: Center(child: Text('Profile Page'))
        ),
      ),
    );
  }
}