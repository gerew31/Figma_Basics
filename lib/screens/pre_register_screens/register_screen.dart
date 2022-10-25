import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final formKey = GlobalKey<FormState>();

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
                  'Register',
                  style: TextStyle(
                    fontFamily: "Comfortaa",
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                 TextFormField(

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
                ),
                const SizedBox(
                  height: 16,
                ),
                 const TextField(
                  decoration: InputDecoration(
                      hintText: 'Create your password',
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
                  child: Container(
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
          )),
    );
  }
}
