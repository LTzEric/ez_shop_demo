import 'package:flutter/material.dart';
import 'package:ez_shop/common_widgets/app_text.dart';
import 'package:ez_shop/styles/colors.dart';

class PromotionItem {
  final String title;
  final String subtitle;
  final String imagePath;

  PromotionItem(this.title, this.subtitle, this.imagePath);
}

var promotionItems = [
  PromotionItem("10% off", "Product List", "assets/images/monitor.png"),
  PromotionItem("40% off", "Display Card 3090", "assets/images/mouse.png"),
  PromotionItem("Get your","coupon here", "assets/images/cpu.png"),
];

class EzshopPromoActivity extends StatelessWidget {
  const EzshopPromoActivity(this.promotionItem,
      {this.color = AppColors.primaryColor});

  final PromotionItem promotionItem;
  final Color color;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 200,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 17),
      decoration: BoxDecoration(
          color: color.withOpacity(0.25),
          borderRadius: BorderRadius.circular(18)),
      child: Row(
        children: [
          Image(
            image: AssetImage(promotionItem.imagePath),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              AppText(
                text: promotionItem.title,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              AppSubText(
                text: promotionItem.subtitle,
                fontSize : 15,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
