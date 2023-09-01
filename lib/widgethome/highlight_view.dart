import 'package:flutter/material.dart';

class HighlightView extends StatelessWidget {
  const HighlightView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: 82,
      width: 82,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 2, color: Colors.black12)),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 3, color: Colors.white),
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/150/300"),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
