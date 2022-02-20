import 'package:flutter/material.dart';

class SpecialButton extends StatelessWidget {
  final String label;
  final Color hoverColor;
  final Color borderColor;
  final Color textColor;
  final VoidCallback? function;

  const SpecialButton(
      {Key? key,
      required this.label,
      required this.textColor,
      required this.hoverColor,
      required this.borderColor,
      this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      hoverColor: hoverColor,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration:
            BoxDecoration(border: Border.all(color: borderColor, width: 2)),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 17, color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
