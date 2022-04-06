import 'package:devstore/data/colors.dart';
import 'package:flutter/material.dart';

class TextSpec extends StatelessWidget {
  final String text;

  const TextSpec({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(
        bottom: width / 102.75,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Regular',
          fontSize: width / 29.3571,
          color: ColorConst.dark,
        ),
      ),
    );
  }
}
