import 'package:flutter/material.dart';
import 'package:fsc_ibb/views/splash/widgets/app_bar_actions.dart';
import 'package:stacked/stacked.dart';
import 'splash_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      builder: (BuildContext context, SplashViewModel viewModel, Widget _) {
        return Scaffold(
          /// Side slider menu came to [Drawer] its was Custom.
          drawer: const Drawer(),

          /// Top App Bar will be modify [AppBar]
          appBar: AppBar(
            // ignore: prefer_const_literals_to_create_immutables
            actions: [
              const AppBarActions(),
            ],

            /// App Title String Method - > [AppLocalizations]
            title: Text(
              AppLocalizations.of(context).title,
              style: const TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leadingWidth: 56,
            leading: Row(
              children: [
                Container(
                  width: 28,
                  height: 30,
                  color: Colors.green,
                ),
                Container(
                  width: 28,
                  height: 30,
                  color: Colors.red,
                ),
              ],
            ),
          ),

          /// View Models export [body]
          body: Center(
              child: Column(
            children: [
              const Text('Splash View'),
              ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.amber,
                      content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.favorite),
                            const Text("FSC IBB")
                          ]),
                      action: SnackBarAction(
                        label: "Undo",
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("Snack"))
            ],
          )),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
