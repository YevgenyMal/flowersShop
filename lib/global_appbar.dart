import 'dart:developer';

import 'package:flowers/about_as_screen.dart';
import 'package:flowers/custom_button.dart';
import 'package:flowers/my_desktop_body.dart';
import 'package:flowers/navigation.dart';
import 'package:flutter/material.dart';

class GlobalAppBar extends StatefulWidget {
  final bool isAboutUsScreen;
  const GlobalAppBar({this.isAboutUsScreen = false, super.key});

  @override
  State<GlobalAppBar> createState() => _GlobalAppBarState();
}

class _GlobalAppBarState extends State<GlobalAppBar> {
  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;
    List<Widget> buttons = [
      CustomButton(
        onTap: () {
          log('iletisim');
          if (widget.isAboutUsScreen) {
            pushWithoutParameters(context, const MyDesktopBody());
          }
        },
        title: 'Ana Sayfa',
        isActive: widget.isAboutUsScreen,
      ),
      CustomButton(
        onTap: () {
          log("Hakkımızda");
        },
        title: 'Hakkımızda',
      ),
      CustomButton(
        onTap: () => log('Hizletlerimiz'),
        title: 'Hizletlerimiz',
      ),
      CustomButton(
        onTap: () {
          log('iletisim');
          if (!widget.isAboutUsScreen) {
            pushWithoutParameters(context, const AboutUsScreen());
          }
        },
        title: 'iletisim',
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.focused)) {
                return Colors.orange;
              }
              if (states.contains(MaterialState.hovered)) {
                return const Color.fromARGB(255, 48, 126, 50);
              }
              if (states.contains(MaterialState.pressed)) {
                return const Color.fromARGB(255, 102, 101, 98);
              }
              return Colors.cyan; // null throus er
            }),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.focused)) {
                return Colors.red;
              }
              if (states.contains(MaterialState.hovered)) {
                return Colors.red;
              }
              if (states.contains(MaterialState.pressed)) {
                return Colors.blue;
              }
              return Colors.black; // null throus error in flutter 2.2+.
            }),
          ),
          onPressed: () {
            log("GIRIS");
          },
          child: const Text('GIRIS'),
        ),
      )
    ];
    return Row(
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
              'LUX Flowers',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            )
          ],
        ),
        isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: buttons)
            : Row(children: buttons),
      ],
    );
  }
}
