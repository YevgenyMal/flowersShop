import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Color activeColor;
  final Color inActiveColor;
  final Color textActiveColor;
  final Color textInActiveColor;
  final String title;
  final bool isActive;
  final Function() onTap;
  const CustomButton({
    required this.onTap,
    required this.title,
    this.activeColor = const Color.fromARGB(255, 48, 126, 50),
    this.inActiveColor = Colors.grey,
    this.textActiveColor = Colors.white,
    this.textInActiveColor = Colors.white,
    this.isActive = false,
    super.key,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (hovering) {
        if (hovering) {
          isHovering = true;
        } else {
          isHovering = false;
        }
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isHovering || widget.isActive
              ? widget.activeColor
              : widget.inActiveColor,
        ),
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: isHovering || widget.isActive
                ? widget.textActiveColor
                : widget.textInActiveColor,
          ),
        ),
      ),
    );
  }
}
