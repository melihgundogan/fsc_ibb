import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/utils/network.dart';
import 'package:fsc_ibb/views/home/home_view.dart';
import 'package:fsc_ibb/views/login/login_view.dart';
import 'package:fsc_ibb/views/on_board/on_board_view.dart';
import 'package:fsc_ibb/views/profile/profile_view.dart';
import 'package:fsc_ibb/views/sign_up/sign_up_view.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:stacked/stacked.dart';
import 'splash_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      builder: (BuildContext context, SplashViewModel viewModel, Widget _) {
        return Material(
          child: SplashScreen(
            image: Image.network(SplashNetworkImage().splashLogoImage),
            photoSize: 200,
            seconds: 3,
            navigateAfterSeconds: SignUpView(),
            loaderColor: SplashColors().loaderColor,
            backgroundColor: SplashColors().bgColor,
            title: Text('Medical App'),
          ),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
