import 'package:applist/main.dart';
import 'package:applist/screen2.dart';
import 'package:flutter/material.dart';
import 'package:applist/button.dart';

class view extends StatelessWidget {
  const view({
    super.key,
    required this.arr,
  });

  final List<LisViewModel> arr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 15,
        top: 51,
      ),
      // color: Colors.amber,

      child: ListView.builder(
        itemCount: arr.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.amber,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Image.asset(arr[index].image),
                    title: const Text(
                      'Jessica Lee',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SF-Pro-Text',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      arr[index].title,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'SF-Pro-Text',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: Positioned(
                      child: Button(
                          width: 96,
                          height: 39,
                          middleWidget: const Text(
                            'Date Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'SF-Pro-Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600),
                          ),
                          gradient: const LinearGradient(
                              colors: [Color(0xffF857A6), Color(0xffFF5858)]),
                          borderRadius: BorderRadius.circular(20),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondRoute()),
                            );
                          }),
                    ),
                  ),
                  SizedBox(
                    width: 325,
                    height: 94,
                    child: Text(
                      arr[index].caption,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'SF-Pro-Text',
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  ClipRRect(
                    child: Image.asset(arr[index].image2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Image(image: AssetImage('assets/icons/heart.png')),
                      SizedBox(
                        width: 2,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('325'),
                      SizedBox(
                        width: 15,
                      ),
                      Image(image: AssetImage('assets/icons/chat 02.png')),
                      SizedBox(
                        width: 4,
                      ),
                      Text('98'),
                      SizedBox(
                        width: 165,
                      ),
                      Image(image: AssetImage('assets/icons/share.png')),
                      SizedBox(
                        width: 26,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
