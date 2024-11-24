// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/model/item.dart';
import 'package:flutter_ecommerce/pages/chackout.dart';
import 'package:flutter_ecommerce/pages/details_screen.dart';
import 'package:flutter_ecommerce/provider/cart.dart';
import 'package:flutter_ecommerce/shared/colors.dart';
import 'package:flutter_ecommerce/shared/shoping.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final cartInstancee = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarBlue,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
           
             Shoping(),
      
        ],
      ),
      drawer: Drawer(
        backgroundColor: appbarBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg.jpeg"),
                        fit: BoxFit.cover),
                  ),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/images/logo.png")),
                  accountName: Text("Bahah M'beirik",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  accountEmail: Text("Bah008@gmail.com",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                ListTile(
                    title: Text("Home",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    leading: Icon(Icons.home,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    onTap: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                    }),
                ListTile(
                    title: Text("My products",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    leading: Icon(Icons.add_shopping_cart,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    onTap: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChackoutOut(),
                    ),
                  );
                    }),
                ListTile(
                    title: Text("About",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    leading: Icon(Icons.help_center,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    onTap: () {}),
                ListTile(
                    title: Text("Logout",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    leading: Icon(Icons.exit_to_app,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    onTap: () {}),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Text("Developed by Bahah M'beirik © 2024",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 2,
                      // offset: Offset(3, 3),

                    )
                  ]
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: items[index],
                        ),
                      ),
                    );
                  },
                  child: GridTile(
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,
                          left: 0,
                          top: -3,
                          bottom: -9,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(55),
                              child: Image.asset(items[index].imgPath)),
                        ),
                      ],
                    ),
                    footer: GridTileBar(
                      // backgroundColor: Color.fromARGB(66, 73, 127, 110),
                      trailing:  IconButton(
                            color: Color.fromARGB(255, 62, 94, 70),
                            onPressed: () {
                              cartInstancee.add(items[index]);
                            },
                            icon: Icon(Icons.add)),
                      
                
                      leading: Text("\$ ${items[index].price}"),
                
                      title: Text(
                        "",
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
