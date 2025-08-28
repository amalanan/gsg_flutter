import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hint,
    this.isPassword = false,
    required this.fieldController,
    this.validate,
  });

  final TextEditingController fieldController;
  final String? hint;
  final bool isPassword;
  final String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
      child: TextFormField(
        validator: validate,
        controller: fieldController,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hint,
        ),
      ),
    );
  }
}
