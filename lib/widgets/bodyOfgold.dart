import 'package:arabic_font/arabic_font.dart';
import 'package:dahab/widgets/commas.dart';
import 'package:dahab/widgets/categories.dart';
import 'package:dahab/widgets/onsaContainer.dart';
import 'package:dahab/widgets/rows.dart';
import 'package:dahab/widgets/saleorbuy.dart';
import 'package:dahab/widgets/smallbox.dart';
import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body({
    super.key,
    required this.result24ksale,
    required this.result21sale,
    required this.result18sale,
    required this.result14sale,
    required this.se3rgneh,
    required this.se3ronsa,
  });

  final int result24ksale;
  final int result21sale;
  final int result18sale;
  final int result14sale;
  final String se3rgneh;
  final String se3ronsa;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: const EdgeInsets.only(top: 20, left: 40),
          child: categories(),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: Container(
                child: const Text(
                  'سعر الذهب اليوم',
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
                  child: saleORbuy(saleorbuy: 'بيع'),
                ),
                SizedBox(
                  width: 50,
                ),
              saleORbuy(saleorbuy: 'شراء')
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Rows(
                buy: result24ksale - 60,
                sale: result24ksale,
                karat: 'عيار 24',
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Rows(
              buy: result21sale - 50,
              sale: result21sale,
              karat: 'عيار 21',
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Rows(
              buy: result18sale - 40,
              sale: result18sale,
              karat: 'عيار 18',
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Rows(
              buy: result14sale - 35,
              sale: result14sale,
              karat: 'عيار 14',
              color: Colors.white,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                smallBox(
                    esm: 'جنية الذهب',
                    se3r: addCommasToNumberString3(se3rgneh)),
                smallBox(
                    esm: 'الاونصة', se3r: addCommasToNumberString3(se3ronsa)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Elshasha()
          ],
        ),
      ],
    );
  }
}


