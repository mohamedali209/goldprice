import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';

class saleORbuy extends StatelessWidget {
  const saleORbuy({
    super.key,
 required this.saleorbuy });
 final String saleorbuy;
  @override
  Widget build(BuildContext context) {
    return Text(saleorbuy,
        style:const ArabicTextStyle(
            arabicFont: ArabicFont.arefRuqaa,
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.bold));
  }
}