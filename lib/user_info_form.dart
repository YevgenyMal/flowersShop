import 'dart:developer';
import 'package:flutter/material.dart';

import 'email_sender.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _emailController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            const Text(
              "İletişim",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Adınız (gerekli)'),
              validator: (value) {
                if (value == null) {
                  return 'Please enter your name.';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _addressController,
              decoration: const InputDecoration(labelText: 'Address'),
              validator: (value) {
                if (value == null) {
                  return 'Please enter your address.';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                  labelText: 'E-posta adresiniz (gerekli)'),
              validator: (value) {
                if (value == null) {
                  return 'Please enter your email.';
                } else if (value.isNotEmpty) {
                  return 'Please enter a valid email address.';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'İletiniz'),
              maxLines: 3,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                if (_nameController.text.isNotEmpty &&
                    _addressController.text.isNotEmpty &&
                    _emailController.text.isNotEmpty &&
                    _descriptionController.text.isNotEmpty) {
                  // The form is valid, handle the form data here
                  log('user data is valid');
                  sendEmail(
                    userName: _nameController.text,
                    email: _emailController.text,
                    address: _addressController.text,
                    message: _descriptionController.text,
                    subject: "Flowers Delivery",
                    context: context,
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  // bool isValidEmail(String value) {
  //   // Basic email validation
  //   final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  //   return emailRegExp.hasMatch(value);
  // }
}
