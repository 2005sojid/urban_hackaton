import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  String hintText;
  void Function(String)? onChanged;
  TextEditingController controller;
  InputTextField({super.key, required this.hintText, required this.controller, required this.onChanged});

  @override
  Widget build(BuildContext context) {

    return TextField(
      onChanged: onChanged,
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0),

          enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, ), borderRadius: BorderRadius.all(Radius.circular(12)),),
          focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.all(Radius.circular(12)),),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              decoration: TextDecoration.none
          )
      ),
      cursorColor: (Colors.black),

      style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          decoration: TextDecoration.none
      ),
    );
  }
}
