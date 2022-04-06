import 'package:devstore/components/product_card.dart';
import 'package:devstore/data/colors.dart';
import 'package:devstore/data/products.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _search = '';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          const HeaderSearch(),
          Container(
            padding: EdgeInsets.only(
              left: width / 12.84375,
              right: width / 12.84375,
            ),
            margin: EdgeInsets.only(
              bottom: width / 17.125,
            ),
            height: width / 8.5625,
            child: TextField(
              cursorColor: ColorConst.muted,
              textInputAction: TextInputAction.search,
              style: TextStyle(
                fontFamily: 'Regular',
                fontSize: width / 25.6875,
                color: ColorConst.muted,
              ),
              autocorrect: false,
              decoration: InputDecoration(
                suffixIcon: Container(
                  margin: EdgeInsets.only(right: width / 25.6875),
                  child: Icon(
                    Icons.search,
                    color: ColorConst.muted,
                  ),
                ),
                filled: true,
                fillColor: ColorConst.grey,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(width / 8.5625),
                ),
                contentPadding: EdgeInsets.only(
                  top: 0,
                  bottom: 0,
                  left: width / 17.125,
                ),
                hintText: 'Search laptop...',
                hintStyle: TextStyle(
                  fontFamily: 'regular',
                  fontSize: width / 25.6875,
                  color: ColorConst.muted,
                ),
              ),
              onChanged: (String value) {
                _search = value;
              },
            ),
          ),
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
              children: _search == ''
                  ? []
                  : productList
                      .where((product) =>
                          product.model
                              .toLowerCase()
                              .contains(_search.trim().toLowerCase()) ||
                          product.brand
                              .toLowerCase()
                              .contains(_search.trim().toLowerCase()))
                      .map((product) => ProductCard(product: product))
                      .toList(),
            ),
          )
        ],
      ),
    );
  }
}

class HeaderSearch extends StatelessWidget {
  const HeaderSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(
        top: width / 17.125,
        bottom: width / 20.55,
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
          Text(
            'Search Products',
            style: TextStyle(
              fontFamily: 'Medium',
              fontSize: width / 17.125,
              color: ColorConst.dark,
            ),
          )
        ],
      ),
    );
  }
}
