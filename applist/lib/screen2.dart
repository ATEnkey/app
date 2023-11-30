import 'package:applist/screen3/screen3.dart';
import 'package:flutter/material.dart';
import 'package:applist/button.dart';

class ListViewModel {
  final String images;

  ListViewModel({required this.images});
}

class SecondRoute extends StatelessWidget {
  SecondRoute({super.key});

  List<ListViewModel> arr = [
    ListViewModel(images: ('assets/images/av2.png')),
    ListViewModel(images: ('assets/images/av4.png')),
    ListViewModel(images: ('assets/images/av.png')),
    ListViewModel(images: ('assets/images/img_avatar.png')),
    ListViewModel(images: ('assets/images/av7.png')),
    ListViewModel(images: ('assets/images/av8.png')),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: const Row(
            children: [
              Image(image: AssetImage('assets/icons/menu.png')),
              SizedBox(
                width: 10,
              ),
              Text(
                'Messages',
                style: TextStyle(
                    fontSize: 27,
                    fontFamily: 'SF-Pro-Text',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: arr.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 22, right: 25, top: 24),
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
