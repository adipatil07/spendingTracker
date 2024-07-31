import 'package:flutter/material.dart';
import 'package:spendwise/utils/colors_utility.dart';
import 'package:spendwise/utils/style_utility.dart';
import 'package:spendwise/view/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
      apiKey: "AIzaSyBCMWShkPaaLDoTpOecEWKRKFqIN5Rx8hY",
      authDomain: "spendmoney-c2330.firebaseapp.com",
      projectId: "spendmoney-c2330",
      storageBucket: "spendmoney-c2330.appspot.com",
      messagingSenderId: "761475556479",
      appId: "1:761475556479:web:de2bcb9b8cadd6244c4b4a",
      measurementId: "G-8SGZ6DPQNG"
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'JosefinSans',
        primaryColor: ColorsUtility.primaryColor,
        primaryColorDark: ColorsUtility.darkBgColor,
        appBarTheme: AppBarTheme(
          titleTextStyle: StyleUtility.appBarTextStyle,
          backgroundColor: ColorsUtility.primaryColor
        ),
        primaryIconTheme: const IconThemeData(
          color: Color(0xFFFFFFFF),
        ),
        inputDecorationTheme: InputDecorationTheme(
          suffixStyle: const TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          // filled: true,
          // fillColor: ColorsUtility.faintBgColor,
          errorStyle: const TextStyle(fontSize: 12.0),
          labelStyle: const TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w500),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: ColorsUtility.faintBgColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: ColorsUtility.darkBgColor,
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(150, 50),
            textStyle: StyleUtility.buttonTextStyle.copyWith(color: Colors.white),
            backgroundColor: ColorsUtility.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            iconColor: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
