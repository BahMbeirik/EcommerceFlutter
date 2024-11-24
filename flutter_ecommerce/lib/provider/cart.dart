import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/model/item.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  double price = 0;

  add(Item product) {
    selectedProducts.add(product);
    price += product.price.round();
    notifyListeners();
  }

  remove(Item product) {
    selectedProducts.remove(product);
    price -= product.price.round();
    notifyListeners();
  }
}
