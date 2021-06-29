import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color, this.cardChild, this.onPress});

  final Color? color;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild, //Container内のchild(Widget)は指定する事ができるように。
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color, //色はこの中で。
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
