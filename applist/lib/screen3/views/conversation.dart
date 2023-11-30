import 'package:applist/screen3/screen3.dart';
import 'package:flutter/material.dart';

class Conversation extends StatelessWidget {
  const Conversation({
    super.key,
    required this.arr,
  });

  final List<ListViewModel> arr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 16.0, right: 16, top: 20, bottom: 50),
      child: ListView.builder(
        itemCount: arr.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 22, right: 25, top: 14, bottom: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondRoute2()));
              },
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(arr[index].images),
                      title: Text(
                        'Phoebe Tran',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SF-Pro-Text',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text(
                        'Baby, i miss you so much',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SF-Pro-Text',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400),
                      ),
                      trailing: Container(
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            '1',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'SF-Pro-Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          gradient: const LinearGradient(
                              colors: [Color(0xffF857A6), Color(0xffFF5858)]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
