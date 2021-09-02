import 'package:flutter/material.dart';

class TopMixesCard extends StatelessWidget {
  final ImageProvider img;
  final String label;
  const TopMixesCard({
    Key key,
    this.img,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Column(
        children: [
          Image(
            image: img,
            width: 140,
            height: 140,
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: Theme.of(context).textTheme.caption,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
