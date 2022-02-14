import 'package:flutter/material.dart';

class ProfileIntrutaction extends StatelessWidget {
  const ProfileIntrutaction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(),
            const SizedBox(
              width: 15,
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text('megfdlkjd'),
                const Text('fgşkfdjgd'),
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.blue.shade300,
        borderRadius: BorderRadius.circular(16)
      ),
    );
  }
}