import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.onTab, required this.width, required this.text,
  });

  final VoidCallback onTab;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: width,
      decoration: BoxDecoration(
          color: const Color(0xFFFF0000),
          borderRadius: BorderRadius.circular(8)
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF0000)
          ),
          onPressed: onTab, child:  Text(text,style: const TextStyle(color:Colors.white),
      )),
    );
  }
}