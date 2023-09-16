import 'package:flowers/global_appbar.dart';
import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 25),
          const GlobalAppBar(),
          const SizedBox(height: 20),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.green[400],
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
