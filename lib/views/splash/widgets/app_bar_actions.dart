import 'package:flutter/material.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.ac_unit_rounded,
          color: Colors.red,
        ),
        const Icon(
          Icons.ac_unit_rounded,
          color: Colors.red,
        ),
        const Icon(
          Icons.ac_unit_rounded,
          color: Colors.red,
        ),
        const Icon(
          Icons.ac_unit_rounded,
          color: Colors.red,
        ),
        const Icon(
          Icons.ac_unit_rounded,
          color: Colors.red,
        ),
      ],
    );
  }
}
