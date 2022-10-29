import 'package:flutter/material.dart';
import 'package:figma_app/controllers/validation_logic.dart';
import 'package:get/get.dart';

class EmailValidField extends StatelessWidget {
  const EmailValidField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ValidationController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ValidationController(),
        builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                onChanged: (value) {
                  controller.email = value;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email address',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3,
                        color: !controller.isValid
                            ? Colors.red
                            : Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3,
                        color: !controller.isValid
                            ? Colors.red
                            : Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                !controller.isValid ? 'Enter a valid email' : '',
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Comfortaa',
                  color: Colors.grey,
                ),
              ),
            ],
          );
        });
  }
}
