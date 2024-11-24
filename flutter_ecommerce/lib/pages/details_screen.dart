// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/model/item.dart';
import 'package:flutter_ecommerce/shared/colors.dart';
import 'package:flutter_ecommerce/shared/shoping.dart';

class DetailsScreen extends StatefulWidget {
  Item product;
  DetailsScreen({required this.product});
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarBlue,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Details Product",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Shoping(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product.imgPath),
            SizedBox(
              height: 12,
            ),
            Text(
              "\$ ${widget.product.price}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: Text(
                      "New",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(4))),
                SizedBox(
                  width: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 32,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 32,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 32,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 32,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 32,
                      color: Colors.amber,
                    ),
                  ],
                ),
                SizedBox(
                  width: 35,
                ),
                Row(children: [
                  Icon(
                    Icons.edit_location,
                    size: 32,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    widget.product.location,
                    style: TextStyle(fontSize: 16),
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                child: Text(
                  "Details :",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.start,
                )),
            SizedBox(
              height: 16,
            ),
            Text(
              "Une montre est un instrument de mesure du temps qui se porte sur soi. Une montre diffère d’une horloge, d’une pendule ou de tout autre instrument de mesure du temps par le fait qu’elle peut être emportée lors de déplacements sans que son fonctionnement soit altéré.",
              style: TextStyle(fontSize: 18),
              maxLines: isShowMore ? 3 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isShowMore = !isShowMore;
                  });
                },
                child: Text(
                  isShowMore ? "show more" : "show less",
                  style: TextStyle(fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
