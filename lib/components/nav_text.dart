import 'package:flutter/material.dart';

import '../data/colors.dart';

class NavText extends StatelessWidget {
  final String text;
  final bool active;

  const NavText({Key? key, required this.text, required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: active ? ColorConst.primary : ColorConst.white,
        borderRadius: BorderRadius.circular(width / 20.55),
      ),
      padding: EdgeInsets.only(
        top: width / 205.5,
        bottom: width / 205.5,
        left: width / 34.25,
        right: width / 34.25,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: active ? ColorConst.white : ColorConst.muted,
          fontFamily: 'Medium',
          fontSize: width / 29.3571,
        ),
      ),
    );
  }
}
