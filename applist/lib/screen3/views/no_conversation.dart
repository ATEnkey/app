import 'package:applist/button.dart';
import 'package:flutter/material.dart';

class NoConversation extends StatelessWidget {
  const NoConversation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          'assets/images/cartoon.png',
          width: 188,
          height: 151,
        ),
        SizedBox(
          height: 27,
        ),
        Text(
          'NO CONVERSATION',
          style: TextStyle(
              fontSize: 16,
              color: Color(0xff141434),
              fontStyle: FontStyle.normal,
              fontFamily: 'SF-Pro-Text',
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Find your life partner right now!',
          style: TextStyle(
              color: Color(0xff7D8699),
              fontSize: 15,
              fontFamily: 'SF-Pro-Text',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 66,
        ),
        Button(
            middleWidget: Text(
              'Explore Now',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal),
            ),
            width: 258,
            height: 56,
            borderRadius: BorderRadius.circular(28),
            gradient:
                LinearGradient(colors: [Color(0xffF857A6), Color(0xffFF5858)]),
            onPressed: () {}),
        SizedBox(
          height: 96,
        )
      ],
    );
  }
}
