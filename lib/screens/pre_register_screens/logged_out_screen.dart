import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:figma_app/screens/pre_register_screens/login_screen.dart';
import '../../controllers/validation_logic.dart';
import 'register_screen.dart';
import 'package:get/get.dart';

class LoggedOut extends StatelessWidget {
  static const assetName = 'assets/Rectangle.svg';
  final controller = Get.put(ValidationController());

   LoggedOut({super.key});



  @override
  Widget build(BuildContext context) {


    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        //adding bottom bar for buttons
          bottomNavigationBar: SizedBox(
            height: 105,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Get.to(LoginScreen());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 170,
                    height: 56,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(RegisterScreen()); 
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 170,
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
          body: Stack(
            children: [
              SvgPicture.asset(
                assetName,
                alignment: Alignment.center,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Center(
                child: Image.asset('assets/LOGO.png'),
              ),
            ],

          ), ),
    );
  }
}
