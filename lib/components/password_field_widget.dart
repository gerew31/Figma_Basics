import 'package:flutter/material.dart';
import 'package:figma_app/controllers/validation_logic.dart';
import 'package:get/get.dart';

class PasswordField extends StatelessWidget {
  final String? inFieldText;
  final controller = Get.put(ValidationController());

  PasswordField({
    Key? key,
    required this.inFieldText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ValidationController(),
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            onChanged: (value){
              controller.password = value; // for login screen
              controller.createdPassword = value; //for register screen
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: inFieldText,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color:  !controller.isPasswordValid
                    ? Colors.red
                    : Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color:  !controller.isPasswordValid
                    ? Colors.red
                    : Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            !controller.isPasswordValid ? 'Enter a valid password' : '',
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Comfortaa',
              color: Colors.grey,
            ),
          )
        ],
      ),
      );

  }
}
