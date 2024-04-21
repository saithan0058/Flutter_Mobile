import 'package:flutter/material.dart';
import 'package:project/screen/item/in/Item_in.dart';
import 'package:project/screen/main/loginapp.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => process(),
      child: MaterialApp(
        home: login(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
