import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';

class SolidButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  const SolidButton({
    required this.text,
    required this.onTap,
    required this.color,
    Key? key,
  }) : super(key: key);

  static const double _buttonRadius = 12;
  static const double _verticalPadding = 12.5;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(_buttonRadius),
        ),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: _verticalPadding,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: DoxTypograph.buttonText.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
