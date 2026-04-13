import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AnnouncementPage extends StatefulWidget {
  const AnnouncementPage({super.key});
  @override
  AnnouncementPageState createState() => AnnouncementPageState();
}

class AnnouncementPageState extends State<AnnouncementPage> {

  List announcements = [];

  Future fetchAnnouncements() async {
    final response = await http.get(
      Uri.parse("http://10.0.2.2:8000/api/announcement"),
    );

    if (response.statusCode == 200) {
      setState(() {
        announcements = jsonDecode(response.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchAnnouncements();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: announcements.length,
      itemBuilder: (context, index) {
        final data = announcements[index];
        
        return Card(
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['title'],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                Image.asset(
                  'assets/Koennigsseg.jpg',
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 12),
                Text(
                  data['content'],
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Dibuat pada: ${data['publish_date']}'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}