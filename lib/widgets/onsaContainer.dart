import 'package:arabic_font/arabic_font.dart';
import 'package:dahab/api/helper.dart';
import 'package:flutter/material.dart';

class Elshasha extends StatefulWidget {
  Elshasha({
    super.key,
  });

  @override
  State<Elshasha> createState() => _ElshashaState();
}

class _ElshashaState extends State<Elshasha> {
  String price = Api().get().toString();
  Api api = Api();
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: api.get(),
      builder: (context, snapshot) {
        return Container(
          height: 50,
          width: double.infinity,
          decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            const    Text('الشاشة',
                    style: ArabicTextStyle(
                        arabicFont: ArabicFont.cairo,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Text(
                  '${snapshot.data??0}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
               const Icon(
                  Icons.arrow_upward,
                  color: Colors.green,
                )
              ]),
        );
      },
    );
  }
}
