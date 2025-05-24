import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  CustomButton extends StatelessWidget {
  final double width;
  final double hight;
  final Function action;
  final Color bgColor;
  final Color textColor;
  final String text;
  final Widget? leadingIcon;  // دي صورة أو أي ويدجت تقدر تضيفها على الشمال


  const CustomButton({super.key, required this.width, required this.hight, required this.action, required this.bgColor, required this.textColor, required this.text, this.leadingIcon});


  @override
  Widget build(BuildContext context) {
    return Container(
      child:SizedBox(
        width: 350,
        height: 60,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            foregroundColor: textColor, // لون النص أو الأيقونة
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            if (leadingIcon != null) ...[
          leadingIcon!,
          SizedBox(width: 12),
          ],
          Text(text),
        ]))
      )


    );

  }
}
