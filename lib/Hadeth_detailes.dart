import 'package:flutter/material.dart';

class HadethDetailes extends StatelessWidget {
  String content;


  HadethDetailes({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl);

  }
}
