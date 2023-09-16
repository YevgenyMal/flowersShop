import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainBottomIcons extends StatelessWidget {
  const MainBottomIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   border: Border(
      //     top: BorderSide(width: 1.5, color: Colors.grey),
      //   ),
      // ),
      height: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () => log('bottom button'),
            child: SvgPicture.asset(
              "assets/icons/whatsappColorLogo.svg",
              height: 50,
              width: 50,
            ),
          ),
          InkWell(
            onTap: () => log('bottom button'),
            child: SvgPicture.asset(
              "assets/icons/twitterColorLogo.svg",
              height: 50,
              width: 50,
            ),
          ),
          InkWell(
            onTap: () => log('bottom button'),
            child: SvgPicture.asset(
              "assets/icons/facebookColorLogo.svg",
              height: 50,
              width: 50,
            ),
          ),
          InkWell(
            onTap: () => log('bottom button'),
            child: SvgPicture.asset(
              "assets/icons/tiktokColorLogo.svg",
              height: 50,
              width: 50,
            ),
          ),
          InkWell(
            onTap: () => log('bottom button'),
            child: SvgPicture.asset(
              "assets/icons/instagramColorLogo.svg",
              height: 50,
              width: 50,
            ),
          ),
          InkWell(
            onTap: () => log('bottom button'),
            child: SvgPicture.asset(
              "assets/icons/appleLogo.svg",
              height: 50,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }
}
