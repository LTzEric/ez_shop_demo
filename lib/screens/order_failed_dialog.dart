import 'package:flutter/material.dart';
import 'package:ez_shop/common_widgets/app_button.dart';
import 'package:ez_shop/common_widgets/app_text.dart';
import 'package:ez_shop/screens/order_accepted_screen.dart';

class OrderFailedDialogue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      insetPadding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        height: 600.0,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45,
              ),
              child: Image(
                  image: AssetImage("assets/images/sorry.png"), width: 150, height: 150,),
            ),
            Spacer(
              flex: 5,
            ),
            AppText(
              text: "Order Failed",
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
            Spacer(
              flex: 2,
            ),
            AppText(
              text: "Something went temply wrong",
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff7C7C7C),
            ),
            Spacer(
              flex: 8,
            ),
            AppButton(
              label: "Please Try Again",
              fontWeight: FontWeight.w600,
              onPressed: () {
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext context) {
                    return OrderAcceptedScreen();
                  },
                ));
              },
            ),
            Spacer(
              flex: 4,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: AppText(
                text: "Back To Cart",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
