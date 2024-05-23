import 'package:ectd_tasks/views/cheese_pizza_view.dart';
import 'package:ectd_tasks/views/facebook_view.dart';
import 'package:ectd_tasks/views/fries_view.dart';
import 'package:ectd_tasks/views/pizza_order_view.dart';
import 'package:ectd_tasks/views/twitter_view.dart';
import 'package:ectd_tasks/views/vegetable_pizza_view.dart';
import 'package:ectd_tasks/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        "/" : (context) => HomeView(),
        "/vegPizza" : (context) => VegetablePizza(),
        "/chPizza" : (context) => CheesePizzaView(),
        "/fries" : (context) => FriesView(),
        "/twitter" : (context) => TwitterView(),
        "/facebook" : (context) => FacebookView(),
        "/pizzaOrder" : (context) => PizzaOrderView(),
      }
    );
  }
}


