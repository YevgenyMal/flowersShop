import 'dart:developer';

import 'package:emailjs/emailjs.dart';

sendEmail({
  required String userName,
  required String email,
  required String subject,
  required String message,
  required String address,
}) async {
  Map<String, dynamic> templateParams = {
    "user_name": userName,
    "user_email": email,
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
  } catch (error) {
    log('////////////////${error.toString()}');
  }
}
