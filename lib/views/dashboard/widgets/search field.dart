import 'package:flutter/material.dart';

import '../../../shared/utils.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      //width: 500,
      constraints: BoxConstraints(maxWidth: 250),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search...",
          helperStyle: TextStyle(
            color: textColor.withOpacity(0.5),fontSize: 15,
          ),
          fillColor: bgColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)
          ),
          prefixIcon: Icon(Icons.search,color: textColor.withOpacity(0.5),)
        ),
      ),
    );
  }
}
