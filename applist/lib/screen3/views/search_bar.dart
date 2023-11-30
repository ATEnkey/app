import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({
    super.key,
    required this.onTap,
    required this.onChanged,
    required this.onTapOutside,
  });

  // Funtion callback
  final VoidCallback onTap;
  final Function(String text) onChanged;
  final Function() onTapOutside;

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Container(
      width: 349,
      height: 48,
      // color: Color(0xffF5F5FA),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Color(0xffF5F5FA),
      ),
      clipBehavior: Clip.antiAlias,

      child: TextField(
        controller: controller,
        textInputAction: TextInputAction.search,
        textAlignVertical: TextAlignVertical.center,
        // obscureText: true,
        onChanged: (text) => widget.onChanged(text),
        onSubmitted: (text) => print('onSubmitted: $text'),
        onTap: () => widget.onTap(),
        onTapOutside: (_) => widget.onTapOutside(),
        decoration: InputDecoration(
            isCollapsed: true,
            // border: InputBorder.none,
            hintText: 'Search...',
            prefixIcon: Icon(Icons.search),
            suffixIcon: IconButton(
                onPressed: () {
                  controller.clear();
                  widget.onChanged("");
                },
                icon: Icon(Icons.delete))),
      ),
    );
  }
}
