import 'package:edge/homepage.dart';
import 'package:flutter/material.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

void main() async {
  await PersistentShoppingCart().init();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'mont',
      ),
      home: MyHomePage(),
    ),
  );
}
