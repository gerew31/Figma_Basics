import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  const EmailFieldWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  State<EmailFieldWidget> createState() => _EmailFieldWidgetState();
}

class _EmailFieldWidgetState extends State<EmailFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (email){
        return email != null && !EmailValidator.validate(email) ? 'Enter a valid email' : null;
      },
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          hintText: 'Email address',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(0)),
          )),
    );
  }
}