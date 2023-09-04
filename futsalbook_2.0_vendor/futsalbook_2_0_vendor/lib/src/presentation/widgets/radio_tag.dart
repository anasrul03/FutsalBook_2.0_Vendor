import 'package:flutter/material.dart';
import 'package:futsalbook_2_0_vendor/src/domain/models/radio_model.dart';

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  const RadioItem(this._item, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
      child: Container(
        padding: const EdgeInsets.all(2),
        width: _item.buttonText.length.toDouble() * 12,
        decoration: BoxDecoration(
          color: _item.isSelected ? Colors.blueAccent : Colors.transparent,
          border: Border.all(
              width: 2.0,
              color: _item.isSelected ? Colors.blueAccent : Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(18.0)),
        ),
        child: Center(
          child: Text(_item.buttonText,
              style: TextStyle(
                  color: _item.isSelected ? Colors.white : Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  fontWeight:
                      _item.isSelected ? FontWeight.bold : FontWeight.normal)),
        ),
      ),
    );
  }
}
