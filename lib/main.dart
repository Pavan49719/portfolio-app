import 'package:flutter/material.dart';
import 'package:portfolio/button1.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      home: const MyHomePage(title: 'Pavan Bhadane'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image(
            image: NetworkImage(
                'https://static.vecteezy.com/system/resources/previews/000/681/060/original/vertical-abstract-tech-background.jpg'),
            fit: BoxFit.cover,
            height: 700,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('images/1633547755220.jpg'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <button1>[
                      button1(
                        str: 'tel:+91 9359875192',
                        icon: Icons.call,
                      ),
                      button1(
                        str: 'sms:+919359875192?body=Hi Pavan',
                        icon: Icons.sms,
                      ),
                      button1(
                        str: 'https://wa.me/+919359875192',
                        icon: EvaIcons.github,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      launch(
                          'mailto:pavan49719r@gmail.com?subject=Hello Pavan&body=How are you');
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.email_outlined,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Send a G-mail',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      launch('https://www.vit.edu/');
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.school,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'VIT Pune',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      launch('https://www.facebook.com/pavan.bhadane.497');
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.facebook,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Facebook',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
