import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInForms extends StatelessWidget {
  final _formKey=GlobalKey<FormState>();
  final String? text;
  final bool hideText;

   LogInForms({super.key, this.text, required this.hideText});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: TextFormField(
      style: TextStyle(
        color: Colors.white
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white12,
        labelText: text,
        border: InputBorder.none,
      ),
      obscureText: hideText,
      validator: (String? value){
        if(value==null || value.isEmpty){
          return 'This field cannot be empty';
        }
        return null;
      },
    ));
  }
}
