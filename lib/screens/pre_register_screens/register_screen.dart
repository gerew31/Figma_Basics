import 'package:flutter/material.dart';
import 'package:figma_app/components/email_field_widget.dart';
import 'package:figma_app/controllers/email_field_validation.dart';
import 'package:get/get.dart';


class RegisterScreen extends StatelessWidget {
  final controller = Get.put(EmailValidationController());

  RegisterScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              child: const Icon(
                Icons.turn_left_rounded,
                color: Colors.black,
                size: 40,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Container(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: "Comfortaa",
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  EmailValidField(controller: controller),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const  InputDecoration(
                      hintText: 'Create Password',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
              TextButton(
              onPressed: () {
                controller.updateEmailState();
              },
              child:Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child:  const Text(
                        'REGISTER',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
