import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/utils/network.dart';
import 'package:fsc_ibb/views/home/home_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'on_board_view_model.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBoardViewModel>.reactive(
      builder: (BuildContext context, OnBoardViewModel viewModel, Widget _) {
        return Material(
          color: OnBoardColors().bgColor,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Virtual',
                  style: GoogleFonts.roboto(
                      fontSize: 36,
                      color: const Color.fromRGBO(0, 220, 167, 1),
                      fontWeight: FontWeight.bold,
                      wordSpacing: 3),
                ),
                Text('Ecosystem.',
                    style: GoogleFonts.roboto(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 3)),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Specialised healthcare, on a single tech platform, \nsimplifying access for anyone, anywhere',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      wordSpacing: 3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Container(
                          width: 150,
                          height: 250,
                          child: Image.network(
                            OnBoardNetworkImage().onboardDoctorImage,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                            width: 150,
                            height: 250,
                            child: Image.network(
                              SplashNetworkImage().splashLogoImage,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: const Color.fromRGBO(0, 220, 167, 1),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Get\nstarted',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => OnBoardViewModel(),
    );
  }
}

/*

*/ 