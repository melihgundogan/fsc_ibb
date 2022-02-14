import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome Back',style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),),
            Text('Jessica', style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),)
          ],
        ),
      ],
    );
  }
}