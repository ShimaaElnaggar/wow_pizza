import 'package:ectd_tasks/weidgets/custom_app_bar.dart';
import 'package:ectd_tasks/weidgets/custom_container.dart';
import 'package:flutter/material.dart';


class PizzaOrderView extends StatelessWidget {

  const PizzaOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const CustomAppBar(),
      body: Column(
            children: [

              Hero(
                  tag: "/vegPizza",
                  child: CustomContainer(
                    text: 'Vegetable Pizza',
                    imagePath: 'veg_pizza.png',
                    onTab: ()=> Navigator.pushNamed(context, "/vegPizza"),
                  ),
              ),
              const SizedBox(height: 5,),
              Hero(
                tag: "/chPizza",
                child: CustomContainer(
                  text: 'Cheese Pizza',
                  imagePath: 'pizza-cheese.png',
                  onTab: ()=> Navigator.pushNamed(context, "/chPizza"),
                ),
              ),
              const SizedBox(height: 5,),
              Hero(
                tag: "/fries" ,
                child: CustomContainer(
                  text: 'Fries',
                  imagePath: 'fries.png',
                  onTab:()=> Navigator.pushNamed(context, "/fries" ),
                ),
              ),
            ],
          ),
    );
  }
}


