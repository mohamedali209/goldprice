import 'package:flutter/material.dart';

// ignore: must_be_immutable
class loginbutton extends StatelessWidget {
   loginbutton({
    required this.image,
      required this.loginwith
    
  });
  String image;
  String loginwith;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 300,
        decoration:const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Image.asset(
                '$image',
                height: 40,
                width: 50,
              ),
            ),
            Text(
              '$loginwith',
              style:const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            )
          ],
        ));
  }
}
