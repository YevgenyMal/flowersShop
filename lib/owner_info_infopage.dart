import 'package:flutter/material.dart';

class OwnerInfo extends StatelessWidget {
  const OwnerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ADRES - Antalya, Konyaalti",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          'CEP - 05552228999',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          'TELEFON - 02445558889',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          'FAX - 02896665553',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          'E-MAIL - LUXFLOWERS@gmail.com',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          'INSTAGRAM - myinsta777',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
