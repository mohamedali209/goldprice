import 'package:dahab/firebase_options.dart';
import 'package:dahab/pages/calculator.dart';
import 'package:dahab/pages/home.dart';
import 'package:dahab/pages/loginpage.dart';
import 'package:dahab/pages/silverpage.dart';
import 'package:dahab/pages/update.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(As3arElsouq());
}

class As3arElsouq extends StatelessWidget {
  const As3arElsouq({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Homepage.id: (context) => Homepage(),
        silverpage.id: (context) => silverpage(),
        calculator.id: (context) => calculator(),
        loginpage.id: (context) => loginpage(),
        update.id:(context) =>update()
      },
      initialRoute: loginpage.id,
    );
  }
}
