import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditEmailUI extends StatefulWidget {
  const EditEmailUI({super.key});

  @override
  State<EditEmailUI> createState() => _EditEmailUIState();
}

class _EditEmailUIState extends State<EditEmailUI> {
  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 12, 221),
        title: Text(
          'Edit Name',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: width_screen * 0.2,
            ),
            Text(
              'Your Email/อีเมล',
              style: GoogleFonts.kanit(
                fontSize: width_screen * 0.05,
              ),
            ),
            SizedBox(
              height: width_screen * 0.08,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width_screen * 0.06,
                right: width_screen * 0.06,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'อีเมล...',
                  hintStyle: GoogleFonts.kanit(
                    color: Color.fromARGB(255, 199, 199, 33),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: width_screen * 0.05,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'บันทึก',
                style: GoogleFonts.kanit(
                  fontSize: width_screen * 0.05,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  width_screen * (width_screen * 0.1 * 2),
                  width_screen * 0.15,
                ),
                backgroundColor: Color.fromARGB(255, 182, 41, 41),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
