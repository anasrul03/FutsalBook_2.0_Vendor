import 'package:flutter/material.dart';

class ProfitCard extends StatelessWidget {
  const ProfitCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth / 2,
      height: 150,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              const Text(
                "August's Profits",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Positioned(
                right: 10,
                bottom: 40,
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: "+RM1,223",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ])),
              ),
              Positioned(
                right: 10,
                bottom: 15,
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: "+ 36.2%",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ])),
              ),
              Positioned(
                right: 10,
                bottom: 0,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: " from last month",
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
