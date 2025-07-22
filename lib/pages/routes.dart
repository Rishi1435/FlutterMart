import 'package:flutter/material.dart';
import 'package:fluttermart/pages/catergories/appliance.dart';
import 'package:fluttermart/pages/catergories/books.dart';
import 'package:fluttermart/pages/catergories/fashion.dart';
import 'package:fluttermart/pages/catergories/mobiles.dart';
import 'package:fluttermart/pages/catergories/shoe.dart';
import 'package:fluttermart/pages/catergories/watches.dart';

final Map<String, WidgetBuilder> appRoutes = {
  'Mobiles': (context) => Mobiles(),
  'Books': (context) => Books(),
  'Shoes': (context) => Shoes(),
  'Clothing': (context) => Fashion(),
  'Home Appliances': (context) => Appliance(),
  'Watches': (context) => Watches(),
};
