import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  final String label;
  final Widget icon;
  final TextField textField;
  final TextStyle? labelStyle;

  const InfoButton({
    super.key,
    required this.label,
    required this.icon,
    required this.textField,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: labelStyle ?? const TextStyle(color: Colors.white)),

        const SizedBox(height: 6),

        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFFDCDCDC),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(5),
                ),
              ),
              child: Center(child: icon),
            ),

            const SizedBox(width: 2),

            Expanded(
              child: Container(
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(5),
                  ),
                ),
                child: Center(child: textField),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
