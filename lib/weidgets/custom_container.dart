
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String text ;
  String imagePath ;
  Function() onTab;
  CustomContainer({
    required  this.text,
    required this.imagePath,
    required this.onTab,
    Key? key,
    }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10,left: 10, right: 10),
      decoration: BoxDecoration(
        color: const Color(0xffF8981D),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTab,
                  child: Image.asset(
                    "assets/images/$imagePath",
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
            ),

            Text(
              text,
              style: const TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
