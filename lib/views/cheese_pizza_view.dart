import 'package:ectd_tasks/weidgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CheesePizzaView extends StatelessWidget {
  const CheesePizzaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ButtonBar(
                children: [
                  OutlinedButton(
                    child: const Text(
                      "Vegetable Pizza",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/vegPizza");
                    },
                  ),
                  OutlinedButton(
                    child: const Text(
                      "Cheese Pizza",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/chPizza");
                    },
                  ),
                  OutlinedButton(
                    child: const Text(
                      "Fries",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/fries");
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Hero(
              tag: "/chPizza",
              child: Image.asset(
                "assets/images/pizza-cheese.png",
                height: 150,
                width: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
