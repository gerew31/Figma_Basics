import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:figma_app/screens/pre_register_screens/login_screen.dart';
import 'register_screen.dart';

class LoggedOut extends StatelessWidget {
  static const assetName = 'assets/Rectangle.svg';

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        //adding bottom bar for buttons
          bottomNavigationBar: Container(
            height: 105,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
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
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Center(
                child: Image.asset('assets/LOGO.png'),
              ),
            ],

          ), ),
    );
  }
}
