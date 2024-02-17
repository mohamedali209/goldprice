import 'package:arabic_font/arabic_font.dart';
import 'package:dahab/widgets/categories.dart';
import 'package:dahab/widgets/rows.dart';
import 'package:flutter/material.dart';

class bodyOfSilver extends StatelessWidget {
  const bodyOfSilver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 40),
          child: Row(
            children: [
              smallcontaincategory(
                ontap: () {
                  Navigator.pop(context);
                  
                },
                bottomleft: 15,
                bottomright: 0,
                topleft: 15,
                topright: 0,
                color: Colors.grey,
                text: 'الذهب',
              ),
              smallcontaincategory(
                bottomright: 15,
                bottomleft: 0,
                topright: 15,
                topleft: 0,
                ontap: () {},
                color:Colors.amber,
                text: 'فضة',
              )
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: Container(
                child: const Text(
                  'سعر الفضة اليوم',
                  style: ArabicTextStyle(
                      arabicFont: ArabicFont.arefRuqaa,
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 70),
                  child: Text('بيع',
                      style: ArabicTextStyle(
                          arabicFont: ArabicFont.arefRuqaa,
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  width: 50,
                ),
                Text('شراء',
                    style: ArabicTextStyle(
                        arabicFont: ArabicFont.arefRuqaa,
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Rows(
                buy: 47,
                sale: 46,
                karat: 'عيار 999',
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Rows(
              buy: 33,
              sale: 35,
              karat: 'عيار 925 ',
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Rows(
              buy: 28,
              sale: 30,
              karat: 'عيار 800',
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    );
  }
}

