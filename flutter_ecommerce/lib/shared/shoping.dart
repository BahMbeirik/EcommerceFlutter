import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/chackout.dart';
import 'package:flutter_ecommerce/provider/cart.dart';
import 'package:provider/provider.dart';

class Shoping extends StatelessWidget {
  const Shoping({super.key});

  @override
  Widget build(BuildContext context) {
    final cartInstancee = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Container(
                child: Text(
                  "${cartInstancee.selectedProducts.length}",
                  style: TextStyle(color: Colors.white),
                ),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.redAccent, shape: BoxShape.circle)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChackoutOut(
                      
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.add_shopping_cart, color: Colors.white)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            "\$ ${cartInstancee.price}",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
