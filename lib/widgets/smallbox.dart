import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';

class smallBox extends StatelessWidget {
   smallBox({
   required this.se3r, required this.esm 
  });
  final String se3r;
  final String esm;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      height: 45,
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$esm',
                style: ArabicTextStyle(
                  arabicFont: ArabicFont.cairo,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 10),
            child: Text(
              '$se3r',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
