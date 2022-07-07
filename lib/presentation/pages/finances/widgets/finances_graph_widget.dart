import 'package:flutter/material.dart';

class FinancesGraph extends StatelessWidget {
  const FinancesGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 380 / 287,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            //TODO: config the shadow
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(children: [
          Text("Graph here"),
        ]),
      ),
    );
  }
}
