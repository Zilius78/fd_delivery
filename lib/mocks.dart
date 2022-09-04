import 'package:fd_delivery/widgets/category_item.dart';
import 'package:fd_delivery/widgets/food_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Mocks {
  static const categories = [
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

  static const foods = [
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
}
