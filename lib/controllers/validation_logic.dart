import 'package:get/get.dart';
//import 'package:email_validator/email_validator.dart';
import 'database.dart';
import 'package:figma_app/after_register_screens/gallery_screen.dart';

class ValidationController extends GetxController {

  DataBase data = DataBase();

  dynamic isValid = true;
  dynamic isPasswordValid = true;
  dynamic email = '';
  dynamic password;


  // LOGIN SCREEN LOGIC

  updateEmailState () {
    if (email == null){
      isValid = false;
    }
    if (email == data.miniDataBase.keys){
      isValid = true;
    } else {
      isValid = false;
    }
  update();
}

 updatePasswordState(){
    if (password == null){
      isPasswordValid = false;
    }
    else if (data.miniDataBase.containsKey(
       email)) {
     if (data.miniDataBase.containsValue(
         password)) {
       isPasswordValid = true;
     } else {
       isPasswordValid = false;
     }
   }
   update();
 }

 loginScreenLogic (){
   for(final tileN in data.miniDataBase.entries){
     if(email == tileN.key){
       if (password == tileN.value){
         updatePasswordState();
         isValid = true;
         Get.to(Gallery());
       } else if (password != tileN.key) {
         isValid = true;
        isPasswordValid = false;
       }
     } else {
       isValid = false;
     }
     break;
   }
 }

// REGISTER SCREEN LOGIC (I've stopped cause dont know what's going on))

  dynamic isRegisterPasswordValid = true;
  dynamic createdPassword;


accountCreating(){
  if (createdPassword == null){
    isPasswordValid = false;

  } else {
    isPasswordValid = true;
  }

  update();
}



}


