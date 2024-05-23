import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                      Navigator.of(context).pushNamed("/vegPizza");
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
                      Navigator.of(context).pushNamed("/chPizza");
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
                      Navigator.of(context).pushNamed("/fries");
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 50),
            child: Image.asset("assets/images/home image.jpg"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Hi, I'm the Pizza Assistant, what can I help you order?",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffF8981D),
        onPressed: () {
          Navigator.pushNamed(context, "/pizzaOrder");
        },
        child: const Icon(Icons.add,color: Colors.black26,),
      ),
    );
  }
}
