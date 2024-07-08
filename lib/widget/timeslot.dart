import 'package:flutter/material.dart';

class Timeslot extends StatefulWidget {
  const Timeslot({super.key, required this.time, required this.isAvailable});
  final String time;
  final bool isAvailable;

  @override
  State<Timeslot> createState() => _TimeslotState();
}

class _TimeslotState extends State<Timeslot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      height: 30,
      width: 40,
      decoration: BoxDecoration(
        color: widget.isAvailable
            ? Color.fromRGBO(104, 240, 109, 0.9)
            : Color.fromRGBO(217, 217, 217, 1),
        borderRadius: BorderRadius.circular(2), // Makes the corners rounded
        border: Border.all(
          color: Color.fromRGBO(
              0, 0, 0, 200), // Outline color matching the background color
          width: 0, // Thickness of the border
        ),
      ),
      child: Center(
        child: Text(
          widget.time,
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ),
    );
  }
}

class SlotDay extends StatelessWidget {
  SlotDay({
    super.key,
    required this.day,
    required this.date,
    required this.isAvailable1,
    required this.isAvailable2,
    required this.isAvailable3,
    required this.isAvailable4,
    required this.isAvailable5,
    required this.isAvailable6,
    required this.isAvailable7,
    required this.isAvailable8,
    required this.isAvailable9,
    required this.isAvailable10,
  });

  final String day;
  final String date;
  final bool isAvailable1;
  final bool isAvailable2;
  final bool isAvailable3;
  final bool isAvailable4;
  final bool isAvailable5;
  final bool isAvailable6;
  final bool isAvailable7;
  final bool isAvailable8;
  final bool isAvailable9;
  final bool isAvailable10;

  final List<String> times = [
    '08.00',
    '09.00',
    '10.00',
    '11.00',
    '12.00',
    '13.00',
    '14.00',
    '15.00',
    '16.00',
    '17.00'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Text(day),
            Text(date),
            Timeslot(time: times[0], isAvailable: isAvailable1),
            Timeslot(time: times[1], isAvailable: isAvailable2),
            Timeslot(time: times[2], isAvailable: isAvailable3),
            Timeslot(time: times[3], isAvailable: isAvailable4),
            Timeslot(time: times[4], isAvailable: isAvailable5),
            Timeslot(time: times[5], isAvailable: isAvailable6),
            Timeslot(time: times[6], isAvailable: isAvailable7),
            Timeslot(time: times[7], isAvailable: isAvailable8),
            Timeslot(time: times[8], isAvailable: isAvailable9),
            Timeslot(time: times[9], isAvailable: isAvailable10),
          ],
        ),
      ),
    );
  }
}
