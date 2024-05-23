import 'package:ectd_tasks/weidgets/custom_container.dart';
import 'package:flutter/material.dart';


class PizzaOrderView extends StatelessWidget {

  const PizzaOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 4,
        shadowColor: Colors.grey[100],
        backgroundColor: const Color(0xffF8981D),
        title: const Text(
          "WOW Pizza",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 32,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/twitter");
            },
            child: Image.asset("assets/images/twitter.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: const Color(0xffF8981D),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/facebook");
                      },
                      child: Image.asset(
                        "assets/images/facebook.png",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
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


