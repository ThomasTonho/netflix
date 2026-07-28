import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  final String label;
  final Widget icon;
  final TextField textField;
  final TextStyle? labelStyle;

  const InfoButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.textField,
    this.labelStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: labelStyle ?? const TextStyle(color: Colors.white)),

        const SizedBox(height: 4),

        Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: icon),
            ),

            const SizedBox(width: 8),

            Expanded(
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: textField,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
