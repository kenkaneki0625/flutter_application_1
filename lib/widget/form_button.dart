import 'package:flutter/material.dart';

class FormButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const FormButtonWidget({
    required this.text,
    required this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
        shape: StadiumBorder(),
        color: Colors.red,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        textColor: Colors.white,
        onPressed: onClicked,
      );
}