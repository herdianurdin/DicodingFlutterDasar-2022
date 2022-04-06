import 'package:devstore/data/brands.dart';
import 'package:devstore/data/colors.dart';
import 'package:devstore/data/products.dart';
import 'package:devstore/screens/store.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final Brand brand;
  final bool last;

  const BrandCard({
    Key? key,
    required this.brand,
    required this.last,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(
        left: width / 12.84375,
        right: last ? width / 12.84375 : 0,
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return StoreScreen(brand: brand);
          }));
        },
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width / 25.6875)),
        child: Container(
          padding: EdgeInsets.all(width / 37.363),
          decoration: BoxDecoration(
            color: ColorConst.grey,
            borderRadius: BorderRadius.circular(width / 25.6875),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(width / 51.375),
                child: Image.network(
                  brand.logo,
                  width: width / 9.785,
                  height: width / 9.785,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width / 51.375,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      brand.name,
                      style: TextStyle(
                        fontFamily: 'Medium',
                        fontSize: width / 29.3571,
                        color: ColorConst.dark,
                      ),
                    ),
                    Text(
                      productList
                              .where((product) => product.storeId == brand.id)
                              .length
                              .toString() +
                          ' Products',
                      style: TextStyle(
                        fontFamily: 'Regular',
                        fontSize: width / 41.1,
                        color: ColorConst.muted,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
