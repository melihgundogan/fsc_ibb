import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    Key key, this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}