import 'package:arabic_font/arabic_font.dart';
import 'package:dahab/pages/silverpage.dart';
import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  const categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        smallcontaincategory(
          ontap: () {
          },
          bottomleft: 15,
          bottomright: 0,
          topleft: 15,
          topright: 0,
          color: Colors.amber,
          text: 'الذهب',
        ),
        smallcontaincategory(
          bottomright: 15,
          bottomleft: 0,
          topright: 15,
          topleft: 0,
          ontap: () {
            Navigator.pushNamed(context, silverpage.id);
          },
          color: Colors.grey,
          text: 'فضة',
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class smallcontaincategory extends StatelessWidget {
  smallcontaincategory(
      {required this.bottomleft,
      required this.bottomright,
      required this.topleft,
      required this.topright,
      required this.color,
      required this.text,
      this.ontap});
  Color color;
  String text;

  VoidCallback? ontap;
  double? bottomleft;
  double? topleft;
  double? bottomright;
  double? topright;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          height: 40,
          width: 150,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(bottomleft!),
                  topLeft: Radius.circular(topleft!),
                  bottomRight: Radius.circular(bottomright!),
                  topRight: Radius.circular(topright!))),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 65),
            child: Text(
              '$text',
              style: const ArabicTextStyle(
                  arabicFont: ArabicFont.arefRuqaa,
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
