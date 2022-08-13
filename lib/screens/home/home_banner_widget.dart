import 'package:flutter/material.dart';
import 'package:ez_shop/common_widgets/app_text.dart';
import 'package:ez_shop/styles/colors.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 115,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/banner_background.png",
              ),
              fit: BoxFit.cover)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Image.asset(
              "assets/images/ROG_3090_strix_white.png",
            ),
          ),
          //Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: "RTX 3090 24G OC ( White )",
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: "ROG STRIX GeForce",
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              AppText(
                text: "Get Up To 40%  OFF",
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
