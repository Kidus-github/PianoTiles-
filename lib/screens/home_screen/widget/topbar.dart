import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});
  static const level = 10;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: const Text(
                'Lv ${level}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/flappyBirds.png"),
          ),
        ]),
        Stack(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 45),
              child: const Text(
                '${level}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/flappyBirds.png"),
          ),
        ]),
        Stack(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 45),
              child: const Text(
                '${level}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/flappyBirds.png"),
          ),
        ]),
      ],
    );
  }
}
