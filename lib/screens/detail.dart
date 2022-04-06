import 'package:devstore/components/text_spec.dart';
import 'package:devstore/data/brands.dart';
import 'package:devstore/data/colors.dart';
import 'package:devstore/data/products.dart';
import 'package:flutter/material.dart';

import '../components/banner_card.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var brand = brandList.where((brand) => brand.id == product.storeId).first;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const HeaderDetail(),
            ProductView(
              product: product,
            ),
            StoreBanner(brand: brand),
            ProductDetail(product: product),
            AddCart(price: product.price),
          ],
        ),
      ),
    );
  }
}

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(
        top: width / 17.125,
        bottom: width / 34.25,
      ),
      padding: EdgeInsets.only(
        left: width / 20.55,
        right: width / 12.84375,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
          Container(
            decoration: BoxDecoration(
              color: ColorConst.grey,
              borderRadius: BorderRadius.circular(width / 20.55),
            ),
            padding: EdgeInsets.only(
              top: width / 205.5,
              bottom: width / 205.5,
              left: width / 34.25,
              right: width / 34.25,
            ),
            child: Text(
              'Ask Seller',
              style: TextStyle(
                color: ColorConst.primary,
                fontFamily: 'Medium',
                fontSize: width / 25.6875,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductView extends StatelessWidget {
  final Product product;

  const ProductView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(product.image),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(
          left: width / 12.84375,
          right: width / 12.84375,
        ),
        child: Text(
          product.model,
          style: TextStyle(
            fontFamily: 'Medium',
            fontSize: width / 14.6785,
            color: ColorConst.dark,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(
        left: width / 12.84375,
        right: width / 12.84375,
        bottom: width / 25.6875,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: width / 51.375,
            ),
            child: Text(
              product.description,
              style: TextStyle(
                fontFamily: 'Regular',
                fontSize: width / 29.3571,
                color: ColorConst.dark,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: width / 51.375,
            ),
            child: Text(
              'Specification',
              style: TextStyle(
                fontFamily: 'Medium',
                fontSize: width / 25.6875,
                color: ColorConst.dark,
              ),
            ),
          ),
          TextSpec(text: product.specification.os),
          TextSpec(text: product.specification.processor),
          TextSpec(text: product.specification.graphics),
          TextSpec(text: product.specification.display),
          TextSpec(text: product.specification.memory),
          TextSpec(text: product.specification.storage),
        ],
      ),
    );
  }
}

class AddCart extends StatelessWidget {
  final double price;

  const AddCart({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(
        left: width / 12.84375,
        right: width / 12.84375,
        top: width / 51.375,
        bottom: width / 51.375,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConst.grey,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Price',
                style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: width / 25.6875,
                  color: ColorConst.muted,
                ),
              ),
              Text(
                '\$${price.toString()}',
                style: TextStyle(
                  fontFamily: 'Medium',
                  fontSize: width / 22.83,
                  color: ColorConst.primary,
                ),
              )
            ],
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width / 8.5625),
            ),
            color: ColorConst.primary,
            onPressed: () {},
            elevation: 0,
            minWidth: 0,
            hoverElevation: 0,
            focusElevation: 0,
            highlightElevation: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: width / 12.84375,
                right: width / 12.84375,
              ),
              child: Text(
                'Add Cart',
                style: TextStyle(
                  fontFamily: 'Medium',
                  fontSize: width / 25.6875,
                  color: ColorConst.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
