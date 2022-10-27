import 'package:get/get.dart';
import 'package:email_validator/email_validator.dart';

class EmailValidationController extends GetxController {

  dynamic isValid = true;
  dynamic email = '';

  updateEmailState () {
  isValid = EmailValidator.validate(email);
  update();
}

}


