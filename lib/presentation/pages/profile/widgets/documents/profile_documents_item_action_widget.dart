import 'package:flutter/material.dart';

class ProfileDocumentsItemAction extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onTap;
  const ProfileDocumentsItemAction({
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  static const double iconSize = 24;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox.square(
        dimension: iconSize,
        child: icon,
      ),
    );
  }
}
