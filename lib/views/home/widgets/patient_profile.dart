import 'package:flutter/material.dart';

class PatientProfiles extends StatelessWidget {
  const PatientProfiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(5, (index) {
        return const CircleAvatar(
          radius: 25,
        );
      }
      )
    );
  }
}
