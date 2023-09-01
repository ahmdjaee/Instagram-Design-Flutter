import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  ButtonItem({this.textButton, this.icon, this.backgroundColor});
  final String? textButton;
  final IconData? icon;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return (textButton != null)
        ? Expanded(
            child: TextButton(
              onPressed: () {},
              child: Text(
                textButton!,
                style: TextStyle(color: Colors.black),
              ),
              style:
                  OutlinedButton.styleFrom(backgroundColor: Colors.grey[200]),
            ),
          )
        : SizedBox(
            width: 30,
            child: TextButton(
              onPressed: () {},
              child: Icon(
                size: 20,
                icon,
                color: Colors.black,
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: backgroundColor,
              ),
            ),
          );
  }
}
