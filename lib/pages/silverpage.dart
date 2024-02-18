import 'package:dahab/pages/calculator.dart';
import 'package:dahab/widgets/appbar.dart';
import 'package:dahab/widgets/bodyOfSilver.dart';

import 'package:flutter/material.dart';

class silverpage extends StatelessWidget {
  const silverpage({super.key});
  static String id = 'silverpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                Navigator.pushNamed(context, calculator.id);
              },
              child: Icon(Icons.calculate)),
        backgroundColor: Color.fromARGB(132, 154, 176, 194),
        appBar:const Appbar(),
        body:const bodyOfSilver());
  }
}

