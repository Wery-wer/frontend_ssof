import 'package:flutter/material.dart';
import 'package:frontend_ssof/themes/themes.dart';
import 'package:frontend_ssof/widget/dropdown.dart';
import 'package:frontend_ssof/widget/navbar.dart';
import 'package:frontend_ssof/widget/timeslot.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> roomItems = [
    'Alun-alun SSOF',
    'Ciremai',
    'Falt 1',
    'Falt 2',
    'Galunggung',
    'Mandalawangi',
    'Manglayang',
    'Pangrango',
    'Papandayan',
    'Puntang',
    'RR SGM SSOF Jkt',
    'Ruang Karaoke',
    'Talaga Bodas'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: 50),
          child: Image.asset(
            "assets/LogoMrbos.png",
            fit: BoxFit.cover,
            height: 50,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: const NavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Hello, ",
                      style: primaryTextStyle.copyWith(fontSize: 16)),
                  Text("User",
                      style: primaryTextStyle.copyWith(
                          fontWeight: bold, fontSize: 16))
                ],
              ),
              Text(
                "Pilih ruangan untuk boooking ruangan meeting",
                style: primaryTextStyle,
              ),
              const SizedBox(height: 20),
              Text(
                "Pilih Ruangan",
                style: primaryTextStyle.copyWith(
                    fontWeight: FontWeight.w900, fontSize: 20),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Dropdown(dropdownItems: roomItems)),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlotDay(
                        day: "Sun",
                        date: "03/07",
                        isAvailable1: true,
                        isAvailable2: true,
                        isAvailable3: false,
                        isAvailable4: false,
                        isAvailable5: true,
                        isAvailable6: true,
                        isAvailable7: true,
                        isAvailable8: true,
                        isAvailable9: false,
                        isAvailable10: false),
                    SlotDay(
                        day: "Sun",
                        date: "03/07",
                        isAvailable1: false,
                        isAvailable2: true,
                        isAvailable3: true,
                        isAvailable4: true,
                        isAvailable5: true,
                        isAvailable6: true,
                        isAvailable7: true,
                        isAvailable8: true,
                        isAvailable9: true,
                        isAvailable10: true),
                    SlotDay(
                        day: "Sun",
                        date: "03/07",
                        isAvailable1: true,
                        isAvailable2: true,
                        isAvailable3: true,
                        isAvailable4: true,
                        isAvailable5: true,
                        isAvailable6: true,
                        isAvailable7: true,
                        isAvailable8: true,
                        isAvailable9: true,
                        isAvailable10: true),
                    SlotDay(
                        day: "Sun",
                        date: "03/07",
                        isAvailable1: true,
                        isAvailable2: true,
                        isAvailable3: true,
                        isAvailable4: true,
                        isAvailable5: true,
                        isAvailable6: true,
                        isAvailable7: true,
                        isAvailable8: true,
                        isAvailable9: true,
                        isAvailable10: true),
                    SlotDay(
                        day: "Sun",
                        date: "03/07",
                        isAvailable1: true,
                        isAvailable2: true,
                        isAvailable3: true,
                        isAvailable4: true,
                        isAvailable5: true,
                        isAvailable6: true,
                        isAvailable7: true,
                        isAvailable8: true,
                        isAvailable9: true,
                        isAvailable10: true),
                    SlotDay(
                        day: "Sun",
                        date: "03/07",
                        isAvailable1: true,
                        isAvailable2: true,
                        isAvailable3: true,
                        isAvailable4: true,
                        isAvailable5: true,
                        isAvailable6: true,
                        isAvailable7: true,
                        isAvailable8: true,
                        isAvailable9: true,
                        isAvailable10: true),
                    SlotDay(
                        day: "Sun",
                        date: "03/07",
                        isAvailable1: true,
                        isAvailable2: true,
                        isAvailable3: true,
                        isAvailable4: true,
                        isAvailable5: true,
                        isAvailable6: true,
                        isAvailable7: true,
                        isAvailable8: true,
                        isAvailable9: true,
                        isAvailable10: true)
                  ],
                ),
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("test"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
