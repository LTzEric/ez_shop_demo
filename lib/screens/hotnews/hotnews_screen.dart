import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ez_shop/common_widgets/app_text.dart';
import 'package:ez_shop/widgets/search_news_bar_widget.dart';
import 'package:ez_shop/screens/hotnews/promotions.dart';
import 'package:ez_shop/screens/hotnews/product_evaluation.dart';
import 'package:url_launcher/url_launcher.dart';

var url = "https://www.youtube.com/watch?v=tCZeTqEjHVo";

class HotNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:Container(
            child: SingleChildScrollView(
              child: Center(
                child:Column(
                  children: [
                    getHeader(),
                    SizedBox(
                      height: 15,
                    ),
                    padded(subTitle("Promotions")),
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
                          EzshopPromoActivity(
                            promotionItems[0],
                            color: Color(0xFFFFDB4D),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          EzshopPromoActivity(
                            promotionItems[1],
                            color: Color(0xFFFFDB4D),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          EzshopPromoActivity(
                            promotionItems[2],
                            color: Color(0xFFFFDB4D),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    padded(subTitle("Product Evaluation")),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 350,
                      height: 250,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          GestureDetector(
                          onLongPress: () async {
                            var url = "https://www.youtube.com/watch?v=tCZeTqEjHVo";
                              if (await launch(url)){
                                  await launch(url,forceSafariVC: false, forceWebView: false);
                                    }
                                  },
                            child: ProductEvaluation(
                              evaluatedItems[0],
                              color: Colors.pink[50],
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onLongPress: () async {
                              var url = "https://www.youtube.com/watch?v=iCiRB8ALVXY";
                              if (await launch(url)){
                                await launch(url,forceSafariVC: false, forceWebView: false);
                              }
                            },
                            child: ProductEvaluation(
                              evaluatedItems[1],
                              color: Colors.pink[50],
                            ),
                          ),
                        ],
                      ),
                    )

                ]
              ),

            ),
          )
        )
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
            text: "Hot News",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal:10),
            child: SearchNewsBarWidget()
        ),
      ],
    );
  }
  }


Widget padded(Widget widget) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 25),
    child: widget,
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



//       child: Center(
//         child: AppText(
//           text: "~ Hot News ~",
//           fontWeight: FontWeight.w600,
//           color: Color(0xFF7C7C7C),
//         ),
//       ),
//     );
//   }
// }
