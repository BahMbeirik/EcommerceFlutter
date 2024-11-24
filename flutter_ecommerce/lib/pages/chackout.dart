import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/provider/cart.dart';
import 'package:flutter_ecommerce/shared/colors.dart';
import 'package:flutter_ecommerce/shared/shoping.dart';
import 'package:provider/provider.dart';

class ChackoutOut extends StatelessWidget {
  const ChackoutOut({super.key});

  @override
  Widget build(BuildContext context) {
    final cartInstancee = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarBlue,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Chack Out",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Shoping(),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
                height: 600,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: cartInstancee.selectedProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          title:
                              Text(cartInstancee.selectedProducts[index].name),
                          subtitle: Text(
                              "\$ ${cartInstancee.selectedProducts[index].price} - ${cartInstancee.selectedProducts[index].location}"),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                cartInstancee.selectedProducts[index].imgPath),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                cartInstancee.remove(
                                    cartInstancee.selectedProducts[index]);
                              },
                              icon: Icon(Icons.remove)),
                        ),
                      );
                    })),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNBlue),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "Pay \$ ${cartInstancee.price}",
              style: TextStyle(fontSize: 19,color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
