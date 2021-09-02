import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider img;
  final String label;
  final double size;
  const AlbumCard({
    Key key,
    this.img,
    this.label,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: img,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.shuffle_rounded,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              label,
            ),
          ],
        ),
      ],
    );
  }
}
