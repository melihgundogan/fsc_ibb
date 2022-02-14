// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PatientDetails extends StatelessWidget {
  const PatientDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 350,
      height: 170,
      child: Column(
        children: [
          const Informations(
            title: 'Name',
            profile_info: 'Jessica',
          ),
          const Informations(
            title: 'Surname',
            profile_info: 'Simpson',
          ),
          const Informations(
            title: 'Date of birth',
            profile_info: '16 July 1990',
          ),const Informations(
            title: 'City',
            profile_info: 'London',
          ),const Informations(
            title: 'Country',
            profile_info: 'United Kingdom',
          ),
        ],
      ),
    );
  }
}

class Informations extends StatelessWidget {
  const Informations({
    Key key,
    this.title,
    this.profile_info,
  }) : super(key: key);

  final String title, profile_info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(profile_info)],
      ),
    );
  }
}
