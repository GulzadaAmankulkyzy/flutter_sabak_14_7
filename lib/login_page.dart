import 'package:flutter/material.dart';
import 'package:flutter_sabak_14_7/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model.dart';

final students = <Student>[nursultan, gylzada, nazik, mursali, emir];
const snackBar = SnackBar(
  content: Text('kechiresiz login je phone kata'),
);

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isActive = false;
  String? _phone;
  String? _email;
  void _activate() {
    if (_phone != null && _email != null) {
      if (_phone!.isEmpty || _email!.isEmpty) {
        isActive = false;
      } else {
        isActive = true;
      }

      // _phone != null && _email != null) {
      // isActive = true;
      // print(_phone);
      // print(_email);
      // print(isActive);
      setState(() {});
    }
  }

  void controlEmailPhone(String phone, String email) {
    for (final student in students) {
      if (phone == student.phone && email == student.email) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage(student)),
        );
        break;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff076650),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'LoginPage',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 40,
                  backgroundImage: AssetImage(
                    '/images/qwer.jpg',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    '/icons/ghj.jpg',
                    width: 70,
                    height: 70,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Gulzada Amankul kyzy',
              style: GoogleFonts.pacifico(
                  color: const Color.fromARGB(255, 164, 80, 80), fontSize: 30),
            ),
            Text(
              'Flutter DEVOLOPER',
              style: GoogleFonts.rubik(
                  color: const Color.fromARGB(255, 186, 175, 175),
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
            const Divider(
              thickness: 2,
              height: 30,
              indent: 100,
              endIndent: 100,
              color: Color.fromARGB(255, 184, 174, 174),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: TextFormField(
                //initialValue: '+996557400345',
                style: const TextStyle(
                    color: Color.fromARGB(255, 31, 116, 81), fontSize: 20),
                onChanged: (String? phone) {
                  // print('State $_phone');
                  _phone = phone;
                  _activate();
                },
                decoration: const InputDecoration(
                    filled: true,
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                    fillColor: Colors.white,
                    hintText: 'phone number',
                    prefixIcon: Icon(Icons.phone,
                        size: 20, color: Color.fromARGB(255, 31, 116, 81))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  //initialValue: 'gulzada.amankulova91@gmail.com',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 31, 116, 81), fontSize: 20),
                  onChanged: (String? email) {
                    _email = email;
                    _activate();
                    // print(_email);
                  },
                  decoration: const InputDecoration(
                      filled: true,
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                      fillColor: Colors.white,
                      hintText: 'email',
                      prefixIcon: Icon(Icons.email,
                          size: 20, color: Color.fromARGB(255, 31, 116, 81))),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                side: const BorderSide(
                    width: 1.0, color: Colors.white, style: BorderStyle.solid),
              ),
              onPressed: isActive
                  ? () {
                      if (_phone != null && _email != null) {
                        controlEmailPhone(_phone!, _email!);
                      }
                    }
                  : null,
              //() {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => const HomePage()),
              //     );
              //   }

              child: const Text(
                'Sing In',
                style: TextStyle(
                    color: Color.fromARGB(255, 25, 23, 23), fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
