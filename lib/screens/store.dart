import 'package:devstore/components/nav_text.dart';
import 'package:devstore/data/brands.dart';
import 'package:devstore/data/colors.dart';
import 'package:flutter/material.dart';

import '../components/product_card.dart';
import '../data/products.dart';

class StoreScreen extends StatelessWidget {
  final Brand brand;

  const StoreScreen({Key? key, required this.brand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            HeaderStore(brand: brand),
            const HeaderNav(),
            Container(
              padding: EdgeInsets.only(
                left: width / 12.84375,
                right: width / 12.84375,
                bottom: width / 12.84375,
              ),
              child: GridView.count(
                primary: false,
                crossAxisCount: 2,
                mainAxisSpacing: width / 17.125,
                crossAxisSpacing: width / 15.22,
                physics: const ScrollPhysics(),
                childAspectRatio: 0.73,
                shrinkWrap: true,
                children: productList
                    .where((product) => product.storeId == brand.id)
                    .map((product) => ProductCard(product: product))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderStore extends StatelessWidget {
  final Brand brand;

  const HeaderStore({Key? key, required this.brand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: ColorConst.grey,
      ),
      margin: EdgeInsets.only(
        bottom: width / 17.125,
      ),
      height: width / 1.37,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: width / 17.125,
              bottom: width / 20.55,
            ),
            padding: EdgeInsets.only(
              left: width / 20.55,
              right: width / 20.55,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  shape: const CircleBorder(),
                  color: ColorConst.white,
                  onPressed: () => Navigator.pop(context),
                  elevation: 0,
                  minWidth: 0,
                  hoverElevation: 0,
                  focusElevation: 0,
                  highlightElevation: 0,
                  child: Icon(
                    Icons.chevron_left,
                    size: width / 17.125,
                    color: ColorConst.primary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: width / 22.83,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(width / 25.6875),
              child: Image.network(
                brand.logo,
                width: width / 5.1375,
                height: width / 5.1375,
              ),
            ),
          ),
          Center(
            child: Text(
              '${brand.name} Official Store',
              style: TextStyle(
                fontFamily: 'Medium',
                fontSize: width / 20.55,
                color: ColorConst.primary,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HeaderNav extends StatelessWidget {
  const HeaderNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(
        left: width / 12.84375,
        right: width / 12.84375,
      ),
      margin: EdgeInsets.only(
        bottom: width / 12.84375,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          NavText(text: 'Products', active: true),
          NavText(text: 'Newest', active: false),
          NavText(text: 'Popular', active: false),
          NavText(text: 'Category', active: false),
        ],
      ),
    );
  }
}
