import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dahab/api/helper.dart';
import 'package:dahab/pages/calculator.dart';
import 'package:dahab/widgets/appbar.dart';
import 'package:dahab/widgets/bodyOfgold.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({
    this.dollarpriceupdate,
    super.key,
  });
  static String id = 'homepage';
  double? dollarpriceupdate;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future: users.doc('fccf0BBPaj29P0QBj6E5').get(),
      builder: (context, snapshot) {
        Api api = Api();
        double dollarPrice2 = snapshot.data?['dollar'] ?? 0.0;
        return FutureBuilder<dynamic>(
          future: api.get(),
          builder: (context, snapshot) {
            double dollarPrice = dollarPrice2;

            double? data = 2000;
            // double? data = snapshot.data;
            int result24ksale =
                // ignore: unnecessary_null_comparison
                data != null ? (data * dollarPrice / 31.1).toInt() : 0;
            int result21sale = (result24ksale * 21 / 24).toInt();
            int result18sale = (result21sale * 6 / 7).toInt();
            int result14sale = (result18sale / 18 * 14).toInt();
            String se3rgneh = (result21sale * 8).toString();
            String se3ronsa = (result24ksale * 31.1).toInt().toString();
            return Scaffold(
              appBar: Appbar(),
              backgroundColor: Color.fromARGB(255, 4, 23, 38),
              body: body(
                  result24ksale: result24ksale,
                  result21sale: result21sale,
                  result18sale: result18sale,
                  result14sale: result14sale,
                  se3rgneh: se3rgneh,
                  se3ronsa: se3ronsa),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: FloatingActionButton(
                  backgroundColor: Colors.amber,
                  onPressed: () {
                    Navigator.pushNamed(context, calculator.id);
                  },
                  child: Icon(Icons.calculate)),
            );
          },
        );
      },
    );
  }
}
