import 'package:flutter/material.dart';

import 'package:futsalbook_2_0_vendor/src/presentation/widgets/radio_tag.dart';
import 'package:futsalbook_2_0_vendor/src/utils/constants/day_selector_filter.dart';
import '../../domain/models/radio_model.dart';

class RadioDaySelectorWidget extends StatefulWidget {
  const RadioDaySelectorWidget({super.key});

  @override
  State<RadioDaySelectorWidget> createState() => _RadioDaySelectorWidgetState();
}

class _RadioDaySelectorWidgetState extends State<RadioDaySelectorWidget> {
  String isSelected = 'Today';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: daySelector.length,
          itemBuilder: (context, index) {
            return InkWell(
              borderRadius: BorderRadius.circular(16),
              splashColor: Colors.blueAccent,
              onTap: () {
                setState(() {
                  isSelected = daySelector[index];
                });
              },
              child: RadioItem(
                RadioModel(
                  isSelected == daySelector[index],
                  daySelector[index],
                ),
              ),
            );
          }),
    );
  }
}
