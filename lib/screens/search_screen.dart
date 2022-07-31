import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ez_shop/common_widgets/app_text.dart';
import 'package:ez_shop/models/category_item.dart';
import 'package:ez_shop/widgets/category_item_card_widget.dart';
import 'package:ez_shop/widgets/search_bar_widget.dart';

import 'category_items_screen.dart';

List<Color> gridColors = [
  Color(0xff53B175),
  Color(0xffF8A44C),
  Color(0xffF7A593),
  Color(0xffD3B0E0),
  Color(0xffFDE598),
  Color(0xffB7DFF5),
  Color(0xff836AF6),
  Color(0xffD73B77),
];

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          getHeader(),
          Expanded(
            child: getStaggeredGridView(context),
          ),
        ],
      ),
    ));
  }

  Widget getHeader() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: AppText(
            text: "Find Products",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SearchBarWidget(),
        ),
      ],
    );
  }

  Widget getStaggeredGridView(BuildContext context) {
    return StaggeredGridView.count(
      crossAxisCount: 4,
      children: categoryItemsDemo.asMap().entries.map<Widget>((e) {
        int index = e.key;
        CategoryItem categoryItem = e.value;
        return GestureDetector(
          onTap: () {
            onCategoryItemClicked(context, categoryItem);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            child: CategoryItemCardWidget(
              item: categoryItem,
              color: gridColors[index % gridColors.length],
            ),
          ),
        );
      }).toList(),

      //Here is the place that we are getting flexible/ dynamic card for various images
      staggeredTiles: categoryItemsDemo
          .map<StaggeredTile>((_) => StaggeredTile.fit(2))
          .toList(),
      mainAxisSpacing: 3.0,
      crossAxisSpacing: 4.0, // add some space
    );
  }

  void onCategoryItemClicked(BuildContext context, CategoryItem categoryItem) {
    Navigator.of(context).push(new MaterialPageRoute(
      builder: (BuildContext context) {
        return CategoryItemsScreen();
      },
    ));
  }
}