import 'package:flutter/material.dart';

pushWithoutParameters(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}
