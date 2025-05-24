import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hint;
  final FormFieldSetter<String> onSave;
  final FormFieldValidator<String> validator;

  const CustomTextFormField({
    Key? key,
    required this.text,
    required this.hint,
    required this.onSave,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // تحسين ترتيب العناصر
      children: [
        CustomText(
          text: text, // ✅ استخدم المتغير اللي جالك
          fontSize: 14,
          color: Colors.grey.shade900,
        ),
        TextFormField(
          onSaved: onSave,
          validator: validator,
          decoration: InputDecoration(
            hintText: hint, // ✅ استخدم المتغير اللي جالك
            hintStyle: const TextStyle(color: Colors.grey),
            fillColor: Colors.white,

          ),

        ),
      ],
    );
  }
}
