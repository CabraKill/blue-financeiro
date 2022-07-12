import 'package:flutter/material.dart';

class RoundedPhoto extends StatelessWidget {
  final String url;
  const RoundedPhoto({
    required this.url,
    Key? key,
  }) : super(key: key);
  static const double _containerSize = 95;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10.0,
            offset: const Offset(0.0, -2.0),
          ),
        ],
      ),
      padding: const EdgeInsets.all(3.0),
      width: _containerSize,
      height: _containerSize,
      child: ClipOval(
        child: Image.network(
          url,
        ),
      ),
    );
  }
}
