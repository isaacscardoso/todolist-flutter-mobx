import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.textInputType,
    required this.onChanged,
    required this.enabled,
    this.prefix,
    this.suffix,
    this.textEditingController,
    this.obscure = false,
  }) : super(key: key);

  final String hintText;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final bool enabled;
  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController? textEditingController;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: obscure,
      keyboardType: textInputType,
      onChanged: onChanged,
      enabled: enabled,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        hintText: hintText,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        prefixIcon: prefix,
        suffixIcon: suffix,
      ),
      textAlignVertical: TextAlignVertical.center,
    );
  }
}
