import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sabak_14_7/app.dart';

void main() {
  debugPrint('restart');
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff751D85),
      statusBarIconBrightness: Brightness.light));
  runApp(const MyApp());
}
