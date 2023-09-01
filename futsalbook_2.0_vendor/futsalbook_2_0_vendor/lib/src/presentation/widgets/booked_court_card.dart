import 'package:flutter/material.dart';

class BookedCourtCard extends StatelessWidget {
  const BookedCourtCard({super.key});

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
                "Slot Booked",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Positioned(
                right: 10,
                bottom: 0,
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: "23",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  TextSpan(
                    text: " courts",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  )
                ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
