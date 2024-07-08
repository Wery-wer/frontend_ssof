import 'package:flutter/material.dart';
import 'package:frontend_ssof/themes/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class mybookingpage extends StatefulWidget {
  const mybookingpage({super.key});

  @override
  State<mybookingpage> createState() => _mybookingpageState();
}

class _mybookingpageState extends State<mybookingpage> {

  final List<String> times = [
    "08:00",
    "09:00",
    "10:00",
    "11:00",
    "12:00",
    "13:00",
    "14:00",
    "15:00",
    "16:00",
    "17:00",
  ];

  final Set<String> selectedTimes = {};

  @override
  Widget build(BuildContext context) {

    Widget arrowback(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
      onPressed: (){
        
      },
    );
  }

    Widget header() {
      return Container(
      margin: EdgeInsets.only(top: 10, left: 75), // Adjust margin as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 189,
            height: 60,
            margin: EdgeInsets.only(left: 20), // Adjust margin as needed
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/LogoMrbos.png'),
                fit: BoxFit.contain, // Adjust fit as needed
              ),
            ),
          ),
        ],
      ),
    );
  }

    Widget tanggal(){
      return Container(
        margin: EdgeInsets.only(top: 40, left: 28),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tanggal',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 15
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  '7 Juni 2024',
                  style: thirdTextStyle.copyWith(
                    fontSize: 12,
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
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 15
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Talaga Bodas',
                  style: thirdTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: regular
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget waktu() {
    return Container(
      margin: EdgeInsets.only(top: 21, left: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Waktu',
            style: primaryTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 12),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.only(right: 30),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 2.5,
              ),
              itemCount: times.length,
              itemBuilder: (context, index) {
                final time = times[index];
                final isSelected = selectedTimes.contains(time);

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isSelected) {
                        selectedTimes.remove(time);
                      } else {
                        selectedTimes.add(time);
                      }
                    });
                  },
                  child: SizedBox(
                    width: 36,
                    height: 20,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSelected ? buttonColor : Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Text(
                        time,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

    Widget agenda(){
      return Container(
        margin: EdgeInsets.only(top: 30, left: 28),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Agenda',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 15
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Uji Coba Apps Mr.Bos',
                  style: thirdTextStyle.copyWith(
                    fontSize: 12,
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
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 15
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Waiting Approval',
                  style: thirdTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 12,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Action',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 15
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: (){
            
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor, // Warna background
                    foregroundColor: primaryColor, // Warna teks
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: Text(
                    'Edit Data',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12
                    ),  
                  )
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: (){
            
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor, // Warna background
                    foregroundColor: primaryColor, // Warna teks
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: Text(
                    'Batalkan',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12
                    ),  
                  )
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
              arrowback(context),
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