import 'package:figma_app/components/email_field_widget.dart';
import 'package:figma_app/controllers/validation_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:figma_app/components/password_field_widget.dart';
//import 'package:figma_app/after_register_screens/gallery_screen.dart';
import 'package:figma_app/controllers/database.dart';

class LoginScreen extends StatelessWidget {
  final controller = Get.put(ValidationController());

  DataBase data = DataBase();
  LoginScreen({super.key});



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
                    'Log in',
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
                  PasswordField(inFieldText: 'Password',),
                  const SizedBox(
                    height: 16,
                  ),
                  TextButton(
                    onPressed: () {
                      controller.updateEmailState();
                      controller.loginScreenLogic();

                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text(
                        'NEXT',
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

