import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {
  customtextfield({super.key, required this.hinttext,this.onFieldSubmitted});
  final TextEditingController controller = TextEditingController();
  final String hinttext;
 final Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      style:const TextStyle(color: Colors.white),
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border:const OutlineInputBorder(),
          hintText: hinttext,
          hintStyle:const TextStyle(color: Colors.amber),
          enabledBorder:const OutlineInputBorder(borderSide: BorderSide(color: Colors.amber))
        
          ),
    );
  }
}
