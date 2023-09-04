import 'dart:developer';

import 'package:flowers/custom_button.dart';
import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    color: Colors.transparent,
                    child: Image.asset("assets/images/logo_transparent.png"),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'More Flowers',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  CustomButton(
                    onTap: () => log('adfjkwvhef'),
                    title: 'Button',
                  ),
                  CustomButton(
                    onTap: () => log('adfjkwvhef'),
                    title: 'Button 2',
                  ),
                  CustomButton(
                    onTap: () => log('adfjkwvhef'),
                    title: 'Button 3',
                  ),
                  CustomButton(
                    onTap: () => log('adfjkwvhef'),
                    title: 'Button 4',
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.green[500],
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/image1.jpeg",
                  ),
                  fit: BoxFit.cover),
            ),
            height: 150,
            width: 200,
          ),
        ],
      ),
    );
  }
}
