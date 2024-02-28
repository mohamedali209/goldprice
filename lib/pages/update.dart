import 'package:dahab/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class update extends StatefulWidget {
  update({super.key});

  static String id = 'update';

  @override
  State<update> createState() => _updateState();
}

double? dollarPricefire;

class _updateState extends State<update> {
  TextEditingController controller = TextEditingController();
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
   return FutureBuilder<DocumentSnapshot>(
      future: users.doc('fccf0BBPaj29P0QBj6E5').get(),
      builder: (context, snapshot) {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 11, 38, 60),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 11, 38, 60),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    focusColor: Colors.amber,
                    hintText: 'dollar',
                    hintStyle: TextStyle(color: Colors.amber),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber))),
                onFieldSubmitted: (value) async {
                  controller.text = value;
                  await users
                      .doc('fccf0BBPaj29P0QBj6E5')
                      .update({'dollar': double.parse(controller.text)});
                },
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Homepage(
                          dollarpriceupdate: snapshot.data!['dollar'],
                        );
                      },
                    ));
                  },
                  icon: const Icon(Icons.update))
            ],
          ),
        );
      },
    );
  }
}
