import 'package:arabic_font/arabic_font.dart';
import 'package:dahab/pages/update.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, update.id),
          child: Icon(Icons.menu)
        ),
      ],
      leading: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 5),
            child: Text(
              'by',
              style: TextStyle(
                fontFamily: 'Aref Ruqaa',
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0, left: 5),
            child: Text(
              'MA',
              style: TextStyle(
                fontFamily: 'Aref Ruqaa',
                color: Colors.amber,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(40, 22, 23, 90),
      title: const Text(
        ' السوق  ',
style: ArabicTextStyle(arabicFont:ArabicFont.arefRuqaa,fontSize: 40,color: Colors.white ),      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
