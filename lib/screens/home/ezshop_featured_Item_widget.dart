import 'package:flutter/material.dart';
import 'package:ez_shop/common_widgets/app_text.dart';
import 'package:ez_shop/styles/colors.dart';

class EzshopFeaturedItem {
  final String name;
  final String imagePath;

  EzshopFeaturedItem(this.name, this.imagePath);
}

var ezshopFeaturedItems = [
  EzshopFeaturedItem("Monitor", "assets/images/monitor.png"),
  EzshopFeaturedItem("Mouse", "assets/images/mouse.png"),
  EzshopFeaturedItem("CPU", "assets/images/cpu.png"),
];

class EzshopFeaturedCard extends StatelessWidget {
  const EzshopFeaturedCard(this.ezshopFeaturedItem,
      {this.color = AppColors.primaryColor});

  final EzshopFeaturedItem ezshopFeaturedItem;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 105,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 17),
      decoration: BoxDecoration(
          color: color.withOpacity(0.25),
          borderRadius: BorderRadius.circular(18)),
      child: Row(
        children: [
          Image(
            image: AssetImage(ezshopFeaturedItem.imagePath),
          ),
          SizedBox(
            width: 15,
          ),
          AppText(
            text: ezshopFeaturedItem.name,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
