import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({
    super.key,
    required this.hintText,
    required this.prefixIcons,
    required this.isSuffixEnabled,
    required this.isObscure,
    required this.controller,
  });

  final String hintText;
  final Icon prefixIcons;
  final bool isSuffixEnabled;
  final bool isObscure;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.white, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.white, width: 2),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.blue, fontSize: 16),
            prefixIcon: prefixIcons,
            suffixIcon: isSuffixEnabled
                ? Icon(
                    Icons.remove_red_eye,
                    color: Colors.blueGrey[300],
                  )
                : const Icon(
                    Icons.abc,
                    color: Colors.white,
                  ),
            filled: true,
            fillColor: Colors.white),
        obscureText: isObscure ? true : false,
      ),
    );
  }
}
