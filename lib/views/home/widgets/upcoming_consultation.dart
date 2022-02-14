import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';

class UpcomingConsultations extends StatelessWidget {
  const UpcomingConsultations({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: OnBoardColors().bgColor,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(),
                        Column(
                          children: [
                            Text('17:45'),
                            Text('Dec 7'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Melih \nGundogan'),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 30,
                      child: Text('Join the call'),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
