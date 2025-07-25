import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RadioButton extends StatelessWidget {
  String label;
  String controlName;
  String optionOne;
  String optionTwo;
  final Function? onChangeListener;

  RadioButton({
    required this.label,
    required this.controlName,
    required this.optionOne,
    required this.optionTwo,
    this.onChangeListener,
  });

    _onChangeListener(bool val) => onChangeListener!(val);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 14)),
          Row(
            children: [
              Expanded(
                child: ReactiveRadioListTile<bool>(
                  formControlName: controlName,
                  title: Text(optionOne),
                  value: true,
                  onChanged: (val) => _onChangeListener(true),
                ),
              ),
              Expanded(
                child: ReactiveRadioListTile<bool>(
                  formControlName: controlName,
                  title: Text(optionTwo),
                  value: false,
                  onChanged: (val) => _onChangeListener(false),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

