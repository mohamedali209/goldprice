import 'package:flutter/material.dart';

// ignore: must_be_immutable
class update extends StatelessWidget {
  update({
    this.dollar2,
    super.key});
  double? dollar2;
  static String id = 'update';
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration:const InputDecoration(
                hintText: 'dollar', border: OutlineInputBorder()),
            onChanged: (value) {
              dollar2 = double.parse(value);
            },
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context, dollar2);
              },
              icon:const Icon(Icons.update))
        ],
      ),
    );
  }
}
