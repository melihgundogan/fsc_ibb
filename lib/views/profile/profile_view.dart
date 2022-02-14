import 'package:flutter/material.dart';
import 'package:fsc_ibb/views/profile/widget/patient_detail.dart';
import 'package:fsc_ibb/views/profile/widget/profile_introtuction.dart';
import 'package:fsc_ibb/views/profile/widget/share_profile.dart';
import 'package:fsc_ibb/views/profile/widget/shared_profile.dart';
import 'package:fsc_ibb/widgets/general_widgets/bottom_navigation_bar.dart';
import 'package:stacked/stacked.dart';
import 'profile_view_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (BuildContext context, ProfileViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'Profile details',
              style: TextStyle(color: Colors.black),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ), onPressed: () {},
            ),
            toolbarHeight: 100,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const ProfileIntrutaction(),
                const SizedBox(
                  height: 20,
                ),
                const ShareProfile(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Text('Patient details', style: TextStyle(color: Colors.black, fontSize: 20),),
                ),
                const PatientDetails(),
                const Text('Shared profile', style: TextStyle(color: Colors.black, fontSize: 20),),
                const SharedProfile(),
              ],
            ),
          ),
          //bottomNavigationBar: const BottomNavigationAppBar(),
        );
      },
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}



