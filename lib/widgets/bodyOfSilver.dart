import 'package:arabic_font/arabic_font.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dahab/widgets/categories.dart';
import 'package:dahab/widgets/rows.dart';
import 'package:dahab/widgets/saleorbuy.dart';
import 'package:flutter/material.dart';

class bodyOfSilver extends StatelessWidget {
  bodyOfSilver({
    super.key,
  });
  final CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future: users.doc('fccf0BBPaj29P0QBj6E5').get(),
      builder: (context, snapshot) {
        double price999 = (snapshot.data != null && snapshot.data!['999'] != null) ? snapshot.data!['999'].toDouble() : 0.0;

        double price925 = (snapshot.data != null && snapshot.data!['925'] != null) ? snapshot.data!['925'].toDouble() : 0.0;

        double price800 = (snapshot.data != null && snapshot.data!['800'] != null) ? snapshot.data!['800'].toDouble() : 0.0;
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
                    color: Colors.amber,
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
                      child: saleORbuy(saleorbuy: 'بيع')
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
                    buy: price999.toInt()-1,
                    sale: price999.toInt(),
                    karat: 'عيار 999',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Rows(
                  buy:  price925.toInt()-1,
                  sale: price925.toInt(),
                  karat: 'عيار 925 ',
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                 Rows(
                  buy:  price800.toInt()-1,
                  sale: price800.toInt(),
                  karat: 'عيار 800',
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
