import 'package:flutter/material.dart';
import 'package:ez_shop/models/suggested_item.dart';
import 'package:ez_shop/screens/product_details/product_details_screen.dart';
import 'package:ez_shop/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ez_shop/widgets/ezshop_item_card_widget.dart';
import 'package:ez_shop/widgets/search_bar_widget.dart';

import 'ezshop_featured_Item_widget.dart';
import 'home_banner_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset("assets/logos/logo_rect_small.png", height: 30, width: 150,),
                  SizedBox(
                    height: 10,
                  ),
                  padded(locationWidget()),
                  SizedBox(
                    height: 15,
                  ),
                  padded(SearchBarWidget()),
                  SizedBox(
                    height: 25,
                  ),
                  padded(HomeBanner()),
                  SizedBox(
                    height: 25,
                  ),
                  padded(subTitle("Exclusive Order")),
                  getHorizontalItemSlider(exclusiveOffers),
                  SizedBox(
                    height: 15,
                  ),
                  padded(subTitle("Best Selling")),
                  getHorizontalItemSlider(bestSelling),
                  SizedBox(
                    height: 15,
                  ),
                  padded(subTitle("Others")),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 105,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        EzshopFeaturedCard(
                          ezshopFeaturedItems[0],
                          color: Color(0xffF8A44C),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        EzshopFeaturedCard(
                          ezshopFeaturedItems[1],
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        EzshopFeaturedCard(
                          ezshopFeaturedItems[2],
                          color: Color(0xFFFFDB4D),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  getHorizontalItemSlider(others),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget padded(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: widget,
    );
  }

  Widget getHorizontalItemSlider(List<SuggestedItem> items) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 250,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onItemClicked(context, items[index]);
            },
            child: EzshopItemCardWidget(
              item: items[index],
              heroSuffix: "home_screen",
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 20,
          );
        },
      ),
    );
  }

  void onItemClicked(BuildContext context, SuggestedItem SuggestedItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(
              SuggestedItem,
                heroSuffix: "home_screen",
              )),
    );
  }

  Widget subTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black45),
        ),
        Spacer(),
        Text(
          "See All",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.orangeAccent),
        ),
      ],
    );
  }

  Widget locationWidget() {
    String locationIconPath = "assets/icons/location_icon.svg";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          locationIconPath,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "Hong Kong, China",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
