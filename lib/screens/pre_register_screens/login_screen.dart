import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  void validateEmail(){
    final bool isValid = EmailValidator.validate(emailController.text.trim());

    if (isValid){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Valid Email')));
    }else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('NOT Valid Email')));
    }
  }


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
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: 'Email address',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: (){
                    validateEmail();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child:  const Text(
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
          )),
    );
  }
}
