import 'package:flutter/cupertino.dart';
import 'package:ez_shop/common_widgets/app_text.dart';

class HotNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: AppText(
          text: "No News",
          fontWeight: FontWeight.w600,
          color: Color(0xFF7C7C7C),
        ),
      ),
    );
  }
}
