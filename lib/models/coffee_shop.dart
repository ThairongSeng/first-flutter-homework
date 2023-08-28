import 'package:flutter/material.dart';
import 'package:hello/models/coffee.dart';

class CoffeeShop extends ChangeNotifier{
  //coffee for sale list
  final List<Coffee> _shop = [
    Coffee(
        name: 'Long Black',
        price: "4.10",
        imagePath: "lib/images/black cafe.jpg"
    ),
    Coffee(
        name: 'Lattee',
        price: "4.10",
        imagePath: "lib/images/latte.jpg"
    ),
    Coffee(
        name: 'Expresso',
        price: "4.10",
        imagePath: "lib/images/fresh coffee.jpg"
    ),
    Coffee(
        name: 'Iced Coffee',
        price: "4.10",
        imagePath: "lib/images/coffee.jpg"
    ),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop =>_shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item form cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }

}