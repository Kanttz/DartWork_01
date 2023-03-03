// import 'dart:js';
import 'package:dti_profile_me_app/views/home_profile_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart';
// import 'package:flutter/src/widgets/framework.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  // splash screen
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      // เปิดแบบย้อนกลับไม่ได้
      () => Navigator.pushReplacement(
        this.context,
        MaterialPageRoute(
          builder: (Context) => HomeProfileUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 194, 143),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2015/05/26/23/52/technology-785742_960_720.jpg',
                    height: MediaQuery.of(context).size.width * 0.7,
                    width: MediaQuery.of(context).size.width * 0.7,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'DTI SAU PROFILE',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(244, 161, 20, 226),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  DateTime.now().year.toString(),
                  style: TextStyle(
                    fontFamily: 'Kung Phao',
                    fontSize: MediaQuery.of(context).size.width * 0.08,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(244, 161, 20, 226),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Created By',
                  style: GoogleFonts.kanit(
                    color: Color.fromARGB(255, 42, 39, 216),
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  'ID : 6352410018',
                  style: GoogleFonts.kanit(
                    color: Color.fromARGB(255, 42, 39, 216),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
