import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final double height;

  final double paddingLeft;
  final double paddingRight;

  final Widget middleWidget;
  final Widget? leftWidget;
  final Widget? rightWidget;

  final Color? color;
  final LinearGradient? gradient;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;

  final VoidCallback onPressed;

  const Button(
      {super.key,
      this.width = 300,
      this.height = 56,
      required this.middleWidget,
      this.leftWidget,
      this.rightWidget,
      this.color,
      this.gradient,
      this.borderRadius,
      this.border,
      required this.onPressed,
      this.paddingLeft = 16,
      this.paddingRight = 16});

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment layout = MainAxisAlignment.start;
    List<Widget> widgetList = [];

    if (leftWidget != null && rightWidget != null) {
      layout = MainAxisAlignment.spaceBetween;
      widgetList = [leftWidget!, rightWidget!];
    } else if (leftWidget != null) {
      layout = MainAxisAlignment.start;
      widgetList = [leftWidget!];
    } else if (rightWidget != null) {
      layout = MainAxisAlignment.end;
      widgetList = [rightWidget!];
    }

    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
                gradient: gradient,
                color: color,
                border: border,
                borderRadius: borderRadius),
          ),
        ),
        if (widgetList.isNotEmpty)
          Positioned.fill(
            left: paddingLeft,
            right: paddingRight,
            child: Row(
              mainAxisAlignment: layout,
              children: widgetList,
            ),
          ),
        Positioned.fill(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [middleWidget],
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: ElevatedButton(
            onPressed: () => onPressed(),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: borderRadius ?? BorderRadius.zero)),
            child: null,
          ),
        )
      ],
    );
  }
}
