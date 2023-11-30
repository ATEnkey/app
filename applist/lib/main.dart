import 'package:applist/screen3/screen3.dart';
import 'package:flutter/material.dart';
import 'package:applist/button.dart';
import 'package:applist/view.dart';

import 'package:applist/screen2.dart';
import 'screen3/screen3.dart';

class LisViewModel {
  final String caption;
  final String title;
  final String image;
  final String image2;

  const LisViewModel({
    required this.caption,
    required this.title,
    required this.image,
    required this.image2,
  });
}

void main() {
  runApp(MaterialApp(
    title: 'List',
    home: SecondRoute2(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var selectedIndex = 1;
  List<LisViewModel> arr = [
    LisViewModel(
        caption:
            'Lorem ipsum dolor sit amet consectetur. Nunc eget urna in aenean id at massa. Aenean suspendisse pretium bibendum platea a urna sed sollicitudin. Condimentum aliquam cum massa vitae nibh. Dignissim ut elementum.',
        title: '123',
        image: 'assets/images/av5.png',
        image2: 'assets/images/1.png'),
    LisViewModel(
        caption:
            'Lorem ipsum dolor sit amet consectetur. Nunc eget urna in aenean id at massa. Aenean suspendisse pretium bibendum platea a urna sed sollicitudin. Condimentum aliquam cum massa vitae nibh. Dignissim ut elementum.',
        title: '456',
        image: 'assets/images/av4.png',
        image2: 'assets/images/bg.png'),
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
                width: 20,
              ),
              Text(
                'Home',
                style: TextStyle(
                    fontSize: 27,
                    fontFamily: 'SF-Pro-Text',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
              Stack(
                children: [
                  Image(
                    image: AssetImage('assets/icons/Elilipse 134.png'),
                    width: 30,
                    height: 30,
                  ),
                  Image(
                    image: AssetImage('assets/icons/crown.png'),
                    width: 24,
                    height: 24,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: [
        view(arr: arr),
        Center(
          child: Text('man 2'),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 23,
              ),
              Container(
                width: 349,
                height: 48,
                // color: Color(0xffF5F5FA),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.amber,
                ),
                clipBehavior: Clip.antiAlias,

                child: Row(children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.search),
                  Expanded(
                      child: TextField(
                    // obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Search...'),
                  )),
                ]),
              ),
              SizedBox(
                height: 153,
              ),
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
                  gradient: LinearGradient(
                      colors: [Color(0xffF857A6), Color(0xffFF5858)]),
                  onPressed: () {})
            ],
          ),
        )
      ][selectedIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: Colors.white,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Image.asset('assets/icons/chatting.png'),
            label: '',
            selectedIcon: Image.asset('assets/icons/crown.png'),
          ),
          NavigationDestination(
            icon: Image.asset('assets/icons/chat 02.png'),
            label: '',
            selectedIcon: Image.asset('assets/icons/Group.png'),
          ),
          NavigationDestination(
            icon: Image.asset('assets/icons/store.png'),
            label: '',
            selectedIcon: Image.asset('assets/icons/heart2.png'),
          )
        ],
      ),
    );
  }
}
