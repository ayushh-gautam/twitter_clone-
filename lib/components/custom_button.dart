// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonName,
    this.onTap,
  });
  final void Function()? onTap;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        decoration: BoxDecoration(
          
            borderRadius: BorderRadius.circular(14),
            color: Theme.of(context).colorScheme.secondary),
        child: Center(
            child: Text(
          buttonName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        )),
      ),
    );
  }
}
