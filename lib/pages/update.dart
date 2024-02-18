import 'package:flutter/material.dart';

// ignore: must_be_immutable
class update extends StatelessWidget {
  update({this.dollar2, super.key});
  double? dollar2;
  static String id = 'update';
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
            onChanged: (value) {
              dollar2 = double.parse(value);
            },
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.update))
        ],
      ),
    );
  }
}
