import 'dart:developer';

import 'package:emailjs/emailjs.dart';
import 'package:flutter/material.dart';

sendEmail({
  required String userName,
  required String email,
  required String subject,
  required String message,
  required String address,
  required BuildContext context,
}) async {
  Map<String, dynamic> templateParams = {
    "user_name": userName,
    "user_email": "emaliyov@icloud.com",
    "subject": subject,
    "message": message,
    "address": address,
  };

  try {
    await EmailJS.send(
      'service_wnnnbwj',
      'template_47njp7r',
      templateParams,
      const Options(
        publicKey: 'puCExYwIFQ8w0BmG7',
        privateKey: 'gPOiMbE36ENgzHmgmulDV',
      ),
    );
    log('/////////////////SUCCESS!');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Color.fromARGB(0, 150, 189, 96),
        behavior: SnackBarBehavior.fixed,
        padding: const EdgeInsets.fromLTRB(100, 0, 150, 300),
        elevation: 4,
        content: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(22.0)),
          child: const Flexible(
            child: Text(
              "messageHandler(message.toString())",
              style: TextStyle(color: Colors.green),
              maxLines: null,
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  } catch (error) {
    log('////////////////${error.toString()}');
  }
}
