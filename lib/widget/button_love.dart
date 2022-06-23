import 'package:flutter/material.dart';

class ButtonLove extends StatefulWidget {
  const ButtonLove({Key? key}) : super(key: key);

  @override
  State<ButtonLove> createState() => _ButtonLoveState();
}

class _ButtonLoveState extends State<ButtonLove> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      child: Icon(
        isActive ? Icons.favorite : Icons.favorite_border,
        color: Colors.orange[800],
      ),
    );
  }
}
