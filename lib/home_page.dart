import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sabak_14_7/model.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
  const HomePage(
    this.student, {
    Key? key,
  }) : super(key: key);
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEC107),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 8,
        shadowColor: Colors.black,
        backgroundColor: Color(0XFFFEC107),
        centerTitle: true,
        title: Text(
          student.name,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'I am Rich',
            style: GoogleFonts.sofia(
                color: Colors.red,
                fontWeight: FontWeight.w300,
                fontSize: 48,
                height: 2.3),
          ),
          Text(
            'I am Rich',
            style: GoogleFonts.sofia(
              color: Color.fromARGB(255, 17, 16, 16),
              fontWeight: FontWeight.bold,
              fontSize: 48,
            ),
          ),
          Image.asset('assets/images/diamond_kurs_1.png'),
          // Expanded(child: Image.asset('assets/images/grat.png')),
        ]),
      ),
    );
  }
}
