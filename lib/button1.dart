import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class button1 extends StatelessWidget {
  String str;
  IconData icon;
  button1({required this.str, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (await canLaunch(str)) {
          await launch(str);
        } else {
          throw 'Could not lunch $str';
        }
      },
      child: Icon(
        icon,
        size: 40,
      ),
    );
  }
}
