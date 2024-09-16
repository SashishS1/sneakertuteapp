import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan 11  - Retro Midnight Navy',
      price: '130€',
      description: 'Elevate your style with this Jordan classic.',
      imagePath: 'lib/images/One.png',
    ),
    Shoe(
      name: 'Air Jordan 11 - Low Legend Blue',
      price: '220€',
      description: 'Classic, elegant and comfortable.',
      imagePath: 'lib/images/Two.png',
    ),
    Shoe(
      name: 'Air Jordan 11 - Retro Bred',
      price: '300€',
      description: 'a temporal classical.',
      imagePath: 'lib/images/Three.png',
    ),
     Shoe(
      name: 'Air Jordan 11 - Retro Cool Grey',
      price: '250€',
      description: 'a modern and temporal icon.',
      imagePath: 'lib/images/Four.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUsercart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromcart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}