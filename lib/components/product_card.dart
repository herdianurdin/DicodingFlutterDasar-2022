import 'package:devstore/data/colors.dart';
import 'package:devstore/data/products.dart';
import 'package:devstore/screens/detail.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return MaterialButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(product: product);
        }));
      },
      padding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(width / 25.6875)),
      child: Container(
        decoration: BoxDecoration(
          color: ColorConst.grey,
          borderRadius: BorderRadius.circular(width / 25.6875),
        ),
        padding: EdgeInsets.only(
          left: width / 41.1,
          right: width / 41.1,
          bottom: width / 41.1,
        ),
        child: Column(
          children: [
            Image.network(
              product.imageThumbnail,
              width: width / 3.425,
              height: width / 3.425,
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConst.white,
                borderRadius: BorderRadius.circular(width / 25.6875),
              ),
              width: width / 2.9357,
              height: width / 4.68,
              padding: EdgeInsets.all(width / 34.25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.model,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Medium',
                      fontSize: width / 29.3571,
                      color: ColorConst.dark,
                    ),
                  ),
                  Text(
                    product.brand,
                    style: TextStyle(
                      fontFamily: 'Medium',
                      fontSize: width / 34.25,
                      color: ColorConst.muted,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: width / 51.375,
                    ),
                    child: Text(
                      '\$${product.price.toString()}',
                      style: TextStyle(
                        fontFamily: 'Medium',
                        fontSize: width / 25.6875,
                        color: ColorConst.dark,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
