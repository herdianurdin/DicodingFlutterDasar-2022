import 'package:devstore/data/brands.dart';
import 'package:devstore/data/colors.dart';
import 'package:devstore/screens/store.dart';
import 'package:flutter/material.dart';

class StoreBanner extends StatelessWidget {
  final Brand brand;

  const StoreBanner({
    Key? key,
    required this.brand,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      transform: Matrix4.translationValues(0.0, -(width / 12.84375), 0.0),
      decoration: BoxDecoration(
        color: ColorConst.grey,
        borderRadius: BorderRadius.circular(width / 25.6875),
      ),
      padding: EdgeInsets.all(width / 51.375),
      margin: EdgeInsets.only(
        left: width / 12.84375,
        right: width / 12.84375,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: width / 25.6875,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(width / 25.6875),
                  child: Image.network(
                    brand.logo,
                    width: width / 6.421875,
                    height: width / 6.421875,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${brand.name} Official Store',
                    style: TextStyle(
                      fontFamily: 'Medium',
                      fontSize: width / 22.83,
                      color: ColorConst.primary,
                    ),
                  ),
                  Text(
                    'View Store',
                    style: TextStyle(
                      fontFamily: 'Regular',
                      fontSize: width / 34.25,
                      color: ColorConst.muted,
                    ),
                  ),
                ],
              ),
            ],
          ),
          MaterialButton(
            shape: const CircleBorder(),
            minWidth: 0,
            color: ColorConst.white,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return StoreScreen(brand: brand);
              }));
            },
            elevation: 0,
            hoverElevation: 0,
            focusElevation: 0,
            highlightElevation: 0,
            child: Icon(
              Icons.chevron_right,
              size: width / 12.84375,
              color: ColorConst.primary,
            ),
          ),
        ],
      ),
    );
  }
}
