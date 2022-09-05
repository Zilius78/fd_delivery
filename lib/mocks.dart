import 'package:fd_delivery/widgets/category_item.dart';
import 'package:fd_delivery/widgets/food_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Mocks {
  static const foodieCategories = [
    CategoryItem(
      'Hamburger',
      icon: FontAwesomeIcons.burger,
      selected: true,
    ),
    CategoryItem('Pizza', icon: FontAwesomeIcons.pizzaSlice),
    CategoryItem(
      'Verdure',
      icon: FontAwesomeIcons.carrot,
    ),
    CategoryItem('Bevande', icon: FontAwesomeIcons.bottleWater)
  ];

  static const foodiesFoods = [
    FoodItem(
      image: 'assets/images/hamburger-orig.png',
      name: 'Hamburger di Manzo',
      description: 'delicato Angus con cheddar',
      caption: 'questo Hamburger loren Ipsum ha la tomacca inside',
      price: '6.59',
    ),
    FoodItem(
      image: 'assets/images/bacon_king.png',
      name: 'Hamburger di Manzo',
      description: 'delicato Angus con cheddar e roasted bacon',
      caption: 'questo Hamburger loren Ipsum ha la tomacca inside',
      price: '8.59',
    ),
    FoodItem(
      image: 'assets/images/fishburger.png',
      name: 'Chicken Burger',
      description: 'delicato burger con Merluzzo Panato',
      caption: 'questo Hamburger loren Ipsum ha la tomacca inside',
      price: '8.59',
    ),
    FoodItem(
      image: 'assets/images/chicken-burger.png',
      name: 'Fish Burger',
      description: 'delicato burger di Merluzzo Panato',
      caption: 'questo Hamburger loren Ipsum ha la tomacca inside',
      price: '8.59',
    ),
  ];

  static const veggieCategories = [
    CategoryItem(
      'Zuppe',
      icon: Icons.soup_kitchen,
      selected: true,
    ),
    CategoryItem('Insalate',
        icon: Icons.ramen_dining,
    ),
    CategoryItem(
      'Verdure',
      icon: FontAwesomeIcons.carrot,
    ),
    CategoryItem('Bevande', icon: FontAwesomeIcons.bottleWater)
  ];

  static const veggieFoods = [
    FoodItem(
      image: 'assets/veggie/images/salad.png',
      name: 'Insalatona di Verdure Miste',
      description: 'Mix di insalate e vegetali 100 % di stagione',
      caption: 'queste verdure vengono raccolte di giorno in giorno per regalarvi freschezza',
      price: '9.59',
    ),
    FoodItem(
      image: 'assets/veggie/images/thaisoup.png',
      name: 'Thai Soup',
      description: 'Zuppa Thailande',
      caption: 'questa la famosissima Zuppa di Verdure Thai',
      price: '8.59',
    ),
    FoodItem(
      image: 'assets/veggie/images/pack-vegan-meal-pack.png',
      name: 'Piatto Vegano',
      description: 'Mix Vegano',
      caption: 'delicato Mix Vegano di freschissimi Vegetali',
      price: '8.59',
    ),

  ];
}
