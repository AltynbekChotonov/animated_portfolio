import 'package:animated_portfolio/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Бул виджет колдонмоңуздун түпкү тамыры болуп саналат.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      // биз караңгы теманы колдонуп жатабыз жана аны муктаждык катары өзгөртөбүз
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(color: bodyTextColor),
              bodyText2: TextStyle(color: bodyTextColor),
            ),
      ),
      home: HomeScreen(),
    );
  }
}
