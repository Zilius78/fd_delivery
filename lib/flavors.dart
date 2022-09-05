import 'package:fd_delivery/widgets/category_item.dart';
import 'package:fd_delivery/widgets/food_item.dart';
import 'package:flutter/material.dart';

import 'mocks.dart';

enum Flavor {
  FOODIE,
  VEGGIE,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.FOODIE:
        return 'Foodie App';
      case Flavor.VEGGIE:
        return 'Veggie App';
      default:
        return 'title';
    }
  }

  static Color? get primaryColor =>
      appFlavor == Flavor.FOODIE ? Colors.red[700] : Colors.green[700];

  static Color? get primaryColorDark =>
      appFlavor == Flavor.FOODIE ? Colors.red[900] : Colors.green[900];

  static Color? get secondaryColor =>
      appFlavor == Flavor.FOODIE ? Colors.orangeAccent[100] : Colors.green[300];

  static String get splash => appFlavor == Flavor.FOODIE ?
      "assets/images/splash.jpeg" :
      "assets/veggie/images/splash.jpeg";
  static String get devscooter => appFlavor == Flavor.FOODIE ?
      "assets/images/devscooter.png"
      :"assets/veggie/images/devscooter_2.png";

  static List<CategoryItem> get categories =>
      appFlavor == Flavor.FOODIE
          ?  Mocks.foodieCategories
          : Mocks.veggieCategories;

  static List<FoodItem> get foods =>
      appFlavor == Flavor.FOODIE
          ?  Mocks.foodiesFoods
          : Mocks.veggieFoods;
  static String get fontFamily => appFlavor == Flavor.FOODIE ?
      "Cookie" : "Josefin";

}