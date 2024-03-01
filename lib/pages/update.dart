import 'package:dahab/widgets/customtextfield.dart';
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
          backgroundColor:const Color.fromARGB(255, 11, 38, 60),
          appBar: AppBar(
            backgroundColor:const Color.fromARGB(255, 11, 38, 60),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             customtextfield(hinttext: 'dollar',onFieldSubmitted: (value) async {
                  controller.text = value;
                  await users
                      .doc('fccf0BBPaj29P0QBj6E5')
                      .update({'dollar': double.parse(controller.text)});
                } )
             , customtextfield(hinttext: '999',onFieldSubmitted: (value) async {
                  controller.text = value;
                  await users
                      .doc('fccf0BBPaj29P0QBj6E5')
                      .update({'999': double.parse(controller.text)});
                },),customtextfield(hinttext: '925',onFieldSubmitted: (value) async {
                  controller.text = value;
                  await users
                      .doc('fccf0BBPaj29P0QBj6E5')
                      .update({'925': double.parse(controller.text)});
                },),
                customtextfield(hinttext: '800',onFieldSubmitted: (value) async {
                  controller.text = value;
                  await users
                      .doc('fccf0BBPaj29P0QBj6E5')
                      .update({'800': double.parse(controller.text)});
                },),
              Container(
               
                decoration:const BoxDecoration( color: Colors.amber,borderRadius: BorderRadius.all(Radius.circular(30))),
                child: IconButton(
                  color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.update_sharp)),
              )
            ],
          ),
        );
      },
    );
  }
}

