import 'package:flutter/material.dart';

class ShareProfile extends StatelessWidget {
  const ShareProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 20, horizontal: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Share your \npatient profile'),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 50,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 50,
                child: const Text('Share profile'),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
