import 'package:flutter/material.dart';
import 'package:frontend_ssof/themes/themes.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
        
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                      'assets/LogoMrbos.png',
                      height: 200, 
                      width: 200,
                    ),
                  ),
                  Text(
                    'Selamat Datang',
                    style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                    const SizedBox(height: 6),
                    Text("Silakan Login Menggunakan akun FSAI yang sudah terdaftar, untuk akses MR Boss.",
                    style: primaryTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: regular,
                    ),
                  ),
                    const SizedBox(height: 57),
                    Text("Username",
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      ),
                      hintText: 'Masukkan Username',
                      hintStyle: TextStyle(
                        color: Colors.grey, // Hint text color
                      ),
                    ),
                  ),
                  const SizedBox(height: 32.33),
                    Text("Password",
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      ),
                      hintText: 'Masukkan Password',
                      hintStyle: TextStyle(
                        color: Colors.grey, // Hint text color
                      ),
                    ),
                  ),
                  const SizedBox(height: 32.33),
                  ElevatedButton(
                    onPressed: () {
                      // Define your onPressed function here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(vertical: 16.0), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      ),
                       minimumSize: Size(500, 50),
                    ),
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                        fontSize: 16, // Font size
                        color: Colors.white, // Text color
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
