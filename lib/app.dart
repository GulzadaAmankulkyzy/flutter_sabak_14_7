// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:flutter_sabak_14_7/expanded.dart';
// import 'package:flutter_sabak_14_7/home_page.dart';
import 'package:flutter_sabak_14_7/login_page.dart';
// import 'package:flutter_sabak_14_7/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
