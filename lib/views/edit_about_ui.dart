import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditAboutUI extends StatefulWidget {
  const EditAboutUI({super.key});

  @override
  State<EditAboutUI> createState() => _EditAboutUIState();
}

class _EditAboutUIState extends State<EditAboutUI> {
  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 12, 221),
        title: Text(
          'Edit About',
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
              'Your About',
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
                  hintText: 'About...',
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
            // โชว์รูปสัตว์อะไรก็ได้ 25 รูป แถวละสามรูป
            // แล้วกดเลือกได้ 1 รูป
            // ให้รูปทั้งหมดอยู่ตรงกลาง
            Table(
              children: [
                TableRow(
                  children: [
                    Image.asset(
                      'assets/images/animal1.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal2.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal3.jpg',
                      width: width_screen * 0.3,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Image.asset(
                      'assets/images/animal4.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal5.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal6.jpg',
                      width: width_screen * 0.3,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Image.asset(
                      'assets/images/animal7.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal8.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal9.jpg',
                      width: width_screen * 0.3,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Image.asset(
                      'assets/images/animal10.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal11.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal12.jpg',
                      width: width_screen * 0.3,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Image.asset(
                      'assets/images/animal13.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal14.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal15.jpg',
                      width: width_screen * 0.3,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Image.asset(
                      'assets/images/animal16.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal17.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal18.jpg',
                      width: width_screen * 0.3,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Image.asset(
                      'assets/images/animal19.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal20.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal21.jpg',
                      width: width_screen * 0.3,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Image.asset(
                      'assets/images/animal22.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal23.jpg',
                      width: width_screen * 0.3,
                    ),
                    Image.asset(
                      'assets/images/animal24.jpg',
                      width: width_screen * 0.3,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Image.asset(
                      'assets/images/animal25.jpg',
                      width: width_screen * 0.3,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
