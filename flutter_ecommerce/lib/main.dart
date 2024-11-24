// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/chackout.dart';
import 'package:flutter_ecommerce/pages/details_screen.dart';
import 'package:flutter_ecommerce/pages/home.dart';
import 'package:flutter_ecommerce/pages/login.dart';
import 'package:flutter_ecommerce/pages/register.dart';
import 'package:flutter_ecommerce/provider/cart.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: Home(),
      ),
    );
  }
}