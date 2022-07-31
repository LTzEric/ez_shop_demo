import 'package:flutter/material.dart';
import 'package:ez_shop/screens/account/account_screen.dart';
import 'package:ez_shop/screens/cart/cart_screen.dart';
import 'package:ez_shop/screens/search_screen.dart';
import 'package:ez_shop/screens/home/home_screen.dart';
import '../hotnews/hotnews_screen.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Shop", "assets/icons/shop_icon.png", 0, HomeScreen()),
  NavigatorItem("Search", "assets/icons/search_icon.png", 1, ExploreScreen()),
  NavigatorItem("Hot", "assets/icons/hot_icon.png", 2, HotNewsScreen()),
  NavigatorItem("Cart", "assets/icons/cart_icon.png", 3, CartScreen()),
  NavigatorItem("Account", "assets/icons/account_icon.png", 4, AccountScreen()),
];
