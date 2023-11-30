import 'package:applist/screen3/views/no_conversation.dart';
import 'package:applist/screen3/views/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:applist/screen3/views/conversation.dart';

class ListViewModel {
  final String images;

  ListViewModel({required this.images});
}

List<ListViewModel> originData = [
  ListViewModel(images: ('assets/images/av2.png')),
  ListViewModel(images: ('assets/images/av4.png')),
  ListViewModel(images: ('assets/images/av.png')),
  ListViewModel(images: ('assets/images/img_avatar.png')),
  ListViewModel(images: ('assets/images/av7.png')),
  ListViewModel(images: ('assets/images/av8.png')),
];

class SecondRoute2 extends StatefulWidget {
  SecondRoute2({super.key});

  @override
  State<SecondRoute2> createState() => _SecondRoute2State();
}

class _SecondRoute2State extends State<SecondRoute2> {
  // This widget is the root of your application.
  List<ListViewModel> history = originData;
  List<ListViewModel> searchResults = originData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Container(
          child: const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Jessica Lee',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'SF-Pro-Text',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 23,
            ),
            MySearchBar(
              onTap: () => print('onTap 123'),
              onChanged: (String text) => _searchHandler(text),
              onTapOutside: () => FocusManager.instance.primaryFocus?.unfocus(),
            ),
            SizedBox(
              height: 23,
            ),
            searchResults.isNotEmpty
                ? Expanded(
                    child: Conversation(
                      arr: searchResults,
                    ),
                  )
                : Expanded(child: NoConversation())
          ],
        ),
      ),
    );
  }

  _searchHandler(String text) {
    setState(() {
      searchResults = [];
    });
  }
}
