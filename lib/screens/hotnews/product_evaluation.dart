import 'package:flutter/material.dart';
import 'package:ez_shop/common_widgets/app_text.dart';
import 'package:ez_shop/styles/colors.dart';


class EvaluatedItem {
  final String title;
  final String subtitle;
  final String imagePath;

  EvaluatedItem(this.title, this.subtitle, this.imagePath);
}

var evaluatedItems = [
  EvaluatedItem("【Joeman】地表最強卡王！", "RTX3090Ti開箱！一張超過6萬值得買嗎？", "assets/images/product_evaluation/3090ti_evaluation.png"),
  EvaluatedItem("Logitech G Pro X Superlight", "Wireless Gaming Mouse Unboxing - ASMR", "assets/images/product_evaluation/superlight_evaluation.png"),
  EvaluatedItem("1","coupon here", "assets/images/cpu.png"),
];

class ProductEvaluation extends StatelessWidget {
  const ProductEvaluation(this.evaluatedItem,
      {this.color = AppColors.primaryColor});

  final EvaluatedItem evaluatedItem;
  final Color color;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 17),
      decoration: BoxDecoration(
          color: color.withOpacity(0.25),
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          Image(
            image: AssetImage(evaluatedItem.imagePath),
            width: 300,
            height: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              AppText(
                text: evaluatedItem.title,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              AppSubText(
                text: evaluatedItem.subtitle,
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
