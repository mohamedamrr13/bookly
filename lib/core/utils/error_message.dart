import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Text(
        message,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
