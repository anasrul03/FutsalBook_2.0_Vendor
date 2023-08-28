import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("Your Active Promotions"),
        const Divider(
          indent: 15,
          endIndent: 15,
          thickness: 2,
        ),
        SizedBox(
          width: screenWidth,
          height: 150,
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Promotion Card"),
            ),
          ),
        ),
      ],
    );
  }
}
