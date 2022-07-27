import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double radius;
  final IconData iconData;
  final VoidCallback onTap;
  final double iconSize;

  const CustomIconButton({
    Key? key,
    required this.radius,
    required this.iconData,
    required this.onTap,
    required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Icon(
            iconData,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}
