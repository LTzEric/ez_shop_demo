import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ez_shop/common_widgets/app_button.dart';
import 'package:ez_shop/common_widgets/app_text.dart';
import 'package:ez_shop/screens/dashboard/dashboard_screen.dart';
import 'package:ez_shop/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  final String imagePath = "assets/images/welcome_image.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 300,
                ),
                welcomeTextWidget(),
                SizedBox(
                  height: 200,
                ),
                sloganText(),
                SizedBox(
                  height: 40,
                ),
                getButton(context),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ));
  }

  // Widget icon() {
  //   String iconPath = "assets/icons/app_icon.svg";
  //   return SvgPicture.asset(
  //     iconPath,
  //     width: 48,
  //     height: 56,
  //   );
  // }

  Widget welcomeTextWidget() {
    return Column(
      children: [
        AppText(
          text: "Welcome",
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: Colors.orangeAccent,
        ),
        AppText(
          text: "to our store",
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: Color(0xFF80D4FF),
        ),
      ],
    );
  }

  Widget sloganText() {
    return AppText(
      text: "Easy to Shop",
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xFF80D4FF).withOpacity(0.7),
    );
  }

  Widget getButton(BuildContext context) {
    return ElevatedButton(
        child: Text("Let's Go"),
        style: ElevatedButton.styleFrom(primary: Colors.orangeAccent,
    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
    onPressed:() {
      onLetsGoClicked(context);
    },
    );
  }


  // Widget getButton(BuildContext context) {
  //   return AppButton(
  //     label: "Let's Go",
  //     fontWeight: FontWeight.w600,
  //     padding: EdgeInsets.symmetric(vertical: 25),
  //     onPressed: () {
  //       onGetStartedClicked(context);
  //     },
  //
  //   );
  // }

  void onLetsGoClicked(BuildContext context) {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
      builder: (BuildContext context) {
        return DashboardScreen();
      },
    ));
  }
}
