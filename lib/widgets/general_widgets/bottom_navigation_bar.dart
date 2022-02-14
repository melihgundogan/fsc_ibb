import 'package:flutter/material.dart';

class BottomNavigationAppBar extends StatelessWidget {
  const BottomNavigationAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home_outlined),),
          IconButton(onPressed: (){}, icon: Icon(Icons.person_outlined),),
          IconButton(onPressed: (){}, icon: Icon(Icons.calendar_today_outlined),),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined)),
        ],
      ),
    );
  }
}