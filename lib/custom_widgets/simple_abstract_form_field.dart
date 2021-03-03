import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:my_life/models/abstract_model.dart';
import 'package:my_life/models/desire.dart';
import 'package:my_life/models/user.dart';

class SimpleAbstractFormField extends StatelessWidget {

  final AbstractModel model;
  final IconData iconData;
  final String property;

  SimpleAbstractFormField({Key key, @required this.model, @required this.iconData, @required this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(iconData),
        fillColor: Colors.white60,
        hintText: property,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(color: Colors.blue)
        ),
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 3.0),
      ),
      validator: (String s) => s.isEmpty ? "$property can't be empty!" : null,
      onSaved: (String s) {
        if (model is User)
          return (model as User).add(property, s);
        else if (model is Desire)
          return (model as Desire).setTitle(s);
      },
    );
  }
}