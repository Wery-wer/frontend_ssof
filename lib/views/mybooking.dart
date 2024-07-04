import 'package:flutter/material.dart';
import 'package:frontend_ssof/themes/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class mybookingpage extends StatefulWidget {
  const mybookingpage({super.key});

  @override
  State<mybookingpage> createState() => _mybookingpageState();
}

class _mybookingpageState extends State<mybookingpage> {

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        width: 189,
        height: 60,
        margin: EdgeInsets.only(top:28,left: 85),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/LogoMrbos.png')
          )
        ),
      );
    }

    Widget tanggal(){
      return Container(
        margin: EdgeInsets.only(top: 70, left: 28),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tanggal',
                  style: GoogleFonts.poppins(
                    fontWeight: bold,
                    fontSize: 20
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  '7 Juni 2024',
                  style: thirdTextStyle.copyWith(
                    fontWeight: regular
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget ruangan(){
      return Container(
        margin: EdgeInsets.only(top: 21, left: 28),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ruangan',
                  style: GoogleFonts.poppins(
                    fontWeight: bold,
                    fontSize: 20
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Talaga Bodas',
                  style: thirdTextStyle.copyWith(
                    fontWeight: regular
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget waktu(){
      return Container(
        margin: EdgeInsets.only(top: 21, left: 28),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Waktu',
                  style: GoogleFonts.poppins(
                    fontWeight: bold,
                    fontSize: 20
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Talaga Bodas',
                  style: thirdTextStyle.copyWith(
                    fontWeight: regular
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget agenda(){
      return Container(
        margin: EdgeInsets.only(top: 21, left: 28),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Agenda',
                  style: GoogleFonts.poppins(
                    fontWeight: bold,
                    fontSize: 20
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Talaga Bodas',
                  style: thirdTextStyle.copyWith(
                    fontWeight: regular
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget status(){
      return Container(
        margin: EdgeInsets.only(top: 21, left: 28),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Status',
                  style: GoogleFonts.poppins(
                    fontWeight: bold,
                    fontSize: 20
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Talaga Bodas',
                  style: thirdTextStyle.copyWith(
                    fontWeight: regular
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget action(){
      return Container(
        margin: EdgeInsets.only(top: 21, left: 28),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Action',
                  style: GoogleFonts.poppins(
                    fontWeight: bold,
                    fontSize: 20
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Talaga Bodas',
                  style: thirdTextStyle.copyWith(
                    fontWeight: regular
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }


    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              tanggal(),
              ruangan(),
              waktu(),
              agenda(),
              status(),
              action()
            ],
          ),
        ),
      ),
    );
  }
}