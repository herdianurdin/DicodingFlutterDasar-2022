import 'package:devstore/data/colors.dart';
import 'package:flutter/material.dart';

class FeaturedProdct extends StatelessWidget {
  const FeaturedProdct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width / 25.6875),
        color: ColorConst.primary,
      ),
      padding: EdgeInsets.all(width / 25.6875),
      margin: EdgeInsets.only(
        left: width / 12.84375,
        right: width / 12.84375,
        bottom: width / 22.83,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: width / 41.1),
                child: Text(
                  'Zenbook Pro Duo',
                  style: TextStyle(
                    color: ColorConst.grey,
                    fontSize: width / 29.3571,
                    fontFamily: 'Regular',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                'Unbelievable Visual \n& Performance',
                style: TextStyle(
                  color: ColorConst.white,
                  fontSize: width / 22.83,
                  fontFamily: 'Medium',
                ),
              ),
            ],
          ),
          Flexible(
            child: Image.asset(
              'assets/images/zenbook_pro_duo.webp',
            ),
          )
        ],
      ),
    );
  }
}
