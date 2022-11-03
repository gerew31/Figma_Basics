import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import 'package:figma_app/screens/after_register_screens/gallery_screen.dart';

class ValidationController extends GetxController {
  dynamic isValid = true;
  dynamic isPasswordValid = true;
  dynamic email = '';
  dynamic password;

//Mini-database
  Map<String, String> miniDataBase = {
    'danozzlenovo57@gmail.com': '1234567',
    'gusarova.sofia14@gmail.com': '12345678',
    'vnfginvg@gmail.com': '123456789'
  };

  // LOGIN SCREEN LOGIC

  updateEmailState() {
    if (email == null) {
      isValid = false;
    }
    if (email == miniDataBase.keys) {
      isValid = true;
    } else {
      isValid = false;
    }
    update();
  }

  updatePasswordState() {
    if (password == null) {
      isPasswordValid = false;
    } else if (miniDataBase.containsKey(email)) {
      if (miniDataBase.containsValue(password)) {
        isPasswordValid = true;
      } else {
        isPasswordValid = false;
      }
    }
    update();
  }

  loginScreenLogic() {
    for (final tileN in miniDataBase.entries) {
      if (email == tileN.key) {
        if (password == tileN.value) {
          updatePasswordState();
          isValid = true;
          Get.to(const Gallery());
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

// REGISTER SCREEN LOGIC (I've stopped cause don't know what's going on))

  dynamic existedEmail = false;
  dynamic createdPassword;

  accountCreating() {
    isValid = EmailValidator.validate(email);

    // For email and password fields
    if (isValid == true && !miniDataBase.containsKey(email)) {
      if (createdPassword == null || createdPassword.toString().isEmpty) {
        existedEmail = false;
        isPasswordValid = false;
      } else {
        miniDataBase.addAll({'$email': '$password'});
        isPasswordValid = true;
        Get.to(const Gallery());
      }
    } else {
      if(miniDataBase.containsKey(email)){
        isValid = false;
        existedEmail = true;

      } else {
        isValid = false;
      }
    }

    update();
  }
}
