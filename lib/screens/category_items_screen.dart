import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ez_shop/common_widgets/app_text.dart';
import 'package:ez_shop/models/suggested_item.dart';
import 'package:ez_shop/screens/product_details/product_details_screen.dart';
import 'package:ez_shop/widgets/ezshop_item_card_widget.dart';

import 'filter_screen.dart';

class CategoryItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FilterScreen()),
              );
            },
            child: Container(
              padding: EdgeInsets.only(right: 25),
              child: Icon(
                Icons.sort,
                color: Colors.black,
              ),
            ),
          ),
        ],
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: AppText(
            text: "Beverages",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        // I only need two card horizontally
        children: beverages.asMap().entries.map<Widget>((e) {
          SuggestedItem suggestedItem = e.value;
          return GestureDetector(
            onTap: () {
              onItemClicked(context, suggestedItem);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: EzshopItemCardWidget(
                item: suggestedItem,
                heroSuffix: "explore_screen",
              ),
            ),
          );
        }).toList(),
        staggeredTiles:
            beverages.map<StaggeredTile>((_) => StaggeredTile.fit(2)).toList(),
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 0.0, // add some space
      ),
    );
  }

  void onItemClicked(BuildContext context, SuggestedItem suggestedItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          suggestedItem,
          heroSuffix: "explore_screen",
        ),
      ),
    );
  }
}
