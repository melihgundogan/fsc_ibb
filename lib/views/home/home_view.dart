import 'package:flutter/material.dart';
import 'package:fsc_ibb/views/home/widgets/appbar_title.dart';
import 'package:fsc_ibb/views/home/widgets/patient_profile.dart';
import 'package:fsc_ibb/views/home/widgets/upcoming_consultation.dart';
import 'package:fsc_ibb/widgets/custom_widgets/detail_title.dart';
import 'package:fsc_ibb/widgets/general_widgets/bottom_navigation_bar.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (BuildContext context, HomeViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 130,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const AppBarTitle(),
            actions: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.segment,
                      color: Colors.black,
                      size: 36,
                    )),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const DetailTitle(title: 'Upcoming consultations'),
                const UpcomingConsultations(),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 20,
                ),
                const DetailTitle(title: 'Patient profiles'),
                const PatientProfiles(),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavigationAppBar(),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}


