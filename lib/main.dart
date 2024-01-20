import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        // primaryColor: Color(0xff075e54),
        // hintColor: Color.fromARGB(255, 18, 110, 52),
        // hintColor: const Color(0xff075e54),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Whatsapp'),
    );
  }
}
//12.19