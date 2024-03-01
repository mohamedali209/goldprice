import 'package:arabic_font/arabic_font.dart';

import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
 const Rows({ this.sale,  this.buy, required this.karat,required this.color});
  final int? buy;
  final int? sale;
  final String karat;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:color,
          borderRadius:const BorderRadius.all(Radius.circular(15))),
      height: 45,
      width: 380,
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
       const   SizedBox(
            width: 10,
          ),
          Text(
            '$karat',
            style:const ArabicTextStyle(
                arabicFont: ArabicFont.cairo,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              '$buy',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text(
              '$sale',
              style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
