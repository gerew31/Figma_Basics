import 'package:figma_app/screens/pre_register_screens/logged_out_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // get rid of navigation bar
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,overlays: [SystemUiOverlay.bottom]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoggedOut(),
    );
  }
}
