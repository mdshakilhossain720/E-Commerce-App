import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onPress, required this.name});
  final VoidCallback onPress;
  final String name;


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: double.infinity,
        color: Colors.grey,

        child: ElevatedButton(onPressed:onPress, child: Text(
           name)));
  }
}
