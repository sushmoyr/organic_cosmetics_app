import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  const CircularIconButton(
      {Key? key, required this.onPressed, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        onPressed: onPressed,
      ),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.orange.shade300,
          borderRadius: const BorderRadius.all(Radius.circular(160))),
    );
  }
}
