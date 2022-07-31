import 'package:ez_shop/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ez_shop/common_widgets/app_button.dart';

class OrderAcceptedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(
              flex: 10,
            ),
            SvgPicture.asset("assets/icons/order_accepted_icon.svg"),
            Spacer(
              flex: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "You Order Has Been Accepted",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Your item has been placed and is on it's way to being processed",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff7C7C7C),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Spacer(
              flex: 8,
            ),
            AppButton(
              label: "Track Order",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Spacer(
              flex: 2,
            ),
            ElevatedButton(
              child: Text("Back To Home",),
              style: ElevatedButton.styleFrom(primary: Colors.grey[350],
              textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black26),),
              onPressed: () {
                onBackToHomeClicked(context);
              },
            ),
            Spacer(
              flex: 10,
            ),
          ],
        ),
      ),
    );
  }

  void onBackToHomeClicked(BuildContext context) {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (BuildContext context) {
          return DashboardScreen();
        },
    ));
  }
}
