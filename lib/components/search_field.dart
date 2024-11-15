import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  void Function(String)? onChanged;
  SearchField({super.key, required this.hintText, required this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 0),
        prefixIcon: Icon(Icons.search, color: Colors.grey,),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, ), borderRadius: BorderRadius.all(Radius.circular(12)),),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.all(Radius.circular(12)),),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            decoration: TextDecoration.none
        )
      ),
      cursorColor: (Colors.black),

      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        decoration: TextDecoration.none
      ),
    );
  }
}
