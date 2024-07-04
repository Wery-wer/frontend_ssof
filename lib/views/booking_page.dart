import 'package:flutter/material.dart';
import 'package:frontend_ssof/themes/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Stack(
              children: [
                Center(
                  child: Column(
                    children: [
                      // Add a SizedBox for some spacing from the top
                      SizedBox(height: 25),
                      Image.asset(
                        'assets/LogoMrbos.png',
                        width: 200,
                      ),
                      SizedBox(height: 35),
                      Container(
                        padding: EdgeInsets.only(left: 28),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tanggal",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8.0), // Rounded corners
                            ),
                            hintText: 'Masukkan Tanggal',
                            hintStyle: TextStyle(
                              color: Colors.grey, // Hint text color
                              fontSize: 14.0, // Decrease the hint text size
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0), // Adjust this to set the height
                          ),
                        ),
                      ),
                      SizedBox(height: 19.17),
                      Container(
                        padding: EdgeInsets.only(left: 28),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Ruangan",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8.0), // Rounded corners
                            ),
                            hintText: 'Masukkan Ruangan',
                            hintStyle: TextStyle(
                              color: Colors.grey, // Hint text color
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 22),
                      Container(
                        padding: EdgeInsets.only(left: 28),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Waktu",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 2,
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
                                  } else if (selectedTimes.length < 2) {
                                    selectedTimes.add(time);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text("You can only select up to 2 times."),
                                      ),
                                    );
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: isSelected ? Colors.green : Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  time,
                                  style: TextStyle(
                                    color: isSelected ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 22),
                      Container(
                        padding: EdgeInsets.only(left: 28),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Agenda",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8.0), // Rounded corners
                            ),
                            hintText: 'Masukkan Tanggal',
                            hintStyle: TextStyle(
                              color: Colors.grey, // Hint text color
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 22),
                      Container(
                        padding: EdgeInsets.only(left: 28),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PIC",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10.0, // Adjust the position as needed
                  left: 10.0,
                  child: GestureDetector(
                    onTap: () {
                      // Add your onPress code here
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
