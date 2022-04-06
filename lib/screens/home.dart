import 'package:devstore/components/brand_card.dart';
import 'package:devstore/components/product_card.dart';
import 'package:devstore/data/brands.dart';
import 'package:devstore/data/colors.dart';
import 'package:devstore/data/products.dart';
import 'package:devstore/screens/search.dart';
import 'package:flutter/material.dart';

import '../components/featured_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            HeaderHome(),
            FeaturedProdct(),
            ListBrand(),
            SubHeading(),
            GridProduct(),
          ],
        ),
      ),
    );
  }
}

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
        top: width / 17.125,
        bottom: width / 17.125,
      ),
      padding: EdgeInsets.only(
        left: width / 17.125,
        right: width / 17.125,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            shape: const CircleBorder(),
            color: ColorConst.grey,
            onPressed: () {},
            elevation: 0,
            hoverElevation: 0,
            focusElevation: 0,
            highlightElevation: 0,
            minWidth: 0,
            child: Icon(
              Icons.person,
              size: width / 17.125,
              color: ColorConst.primary,
            ),
          ),
          Image.asset(
            'assets/images/logo.webp',
            width: width / 3.425,
          ),
          MaterialButton(
            shape: const CircleBorder(),
            color: ColorConst.grey,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SearchScreen();
              }));
            },
            elevation: 0,
            hoverElevation: 0,
            focusElevation: 0,
            highlightElevation: 0,
            minWidth: 0,
            child: Icon(
              Icons.search,
              size: width / 17.125,
              color: ColorConst.primary,
            ),
          ),
        ],
      ),
    );
  }
}

class ListBrand extends StatelessWidget {
  const ListBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: width / 6.421875,
      margin: EdgeInsets.only(
        bottom: width / 14.6785,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var last = brandList.length - 1 == index;

          return BrandCard(brand: brandList[index], last: last);
        },
        itemCount: brandList.length,
      ),
    );
  }
}

class SubHeading extends StatelessWidget {
  const SubHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(
        left: width / 12.84375,
        right: width / 12.84375,
        bottom: width / 22.83,
      ),
      child: Text(
        'All Products',
        style: TextStyle(
          fontFamily: 'Medium',
          fontSize: width / 22.55,
          color: ColorConst.dark,
        ),
      ),
    );
  }
}

class GridProduct extends StatelessWidget {
  const GridProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
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
            .map((product) => ProductCard(product: product))
            .toList(),
      ),
    );
  }
}
