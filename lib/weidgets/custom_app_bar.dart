
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
