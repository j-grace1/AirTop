import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageDropdown extends StatefulWidget {
  final String value;
  final void Function(String?) onChanged;

  const LanguageDropdown({
    required this.value,
    required this.onChanged,
  });

  @override
  _LanguageDropdownState createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.value,
      onChanged: (String? newValue) {
        widget.onChanged(newValue ?? ''); // Add null check and default value
      },
      icon: Icon(Icons.arrow_drop_down),
      items: <String>['English', 'French', 'Pidgin']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
