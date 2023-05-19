import 'package:flutter/material.dart';

class ModeSelectionDropdown extends StatelessWidget {
  const ModeSelectionDropdown({
    Key? key,
    required this.onChanged,
    required this.value,
  }) : super(key: key);
  final Function(String?) onChanged;
  final String value;

  @override
  Widget build(BuildContext context) {
    List<String> modeNames = ['TBD', 'Static', 'Dynamic'];
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: value,
        elevation: 0,
        onChanged: onChanged,
        items: modeNames.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}