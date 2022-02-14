import 'package:flutter/material.dart';

class SharedProfile extends StatelessWidget {
  const SharedProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 90,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('8 Dec'),
                Text('8:30 AM'),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Anna Kowalsky'),
              Text('7 views')
            ],
          )
        ],
      ),
    );
  }
}
