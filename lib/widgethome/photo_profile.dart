import 'package:flutter/material.dart';

class PhotoProfil extends StatelessWidget {
  const PhotoProfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red, Colors.amber]),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            margin: EdgeInsets.all(4),
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(constraints.maxWidth),
                color: Colors.grey[200],
                image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/200/300"),
                    fit: BoxFit.cover)),
          );
        },
      ),
    );
  }
}
