import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  const Detailpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('data')),
          )
        ],
      ),
    );
  }
}