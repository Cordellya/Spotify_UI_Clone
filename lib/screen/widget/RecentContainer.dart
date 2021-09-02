import 'package:flutter/material.dart';
import 'package:spotify_clone_ui/widget/AlbumCard.dart';

class RecentContainer extends StatelessWidget {
  const RecentContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AlbumCard(
            img: AssetImage('assets/images/album1.jpg'),
            label: 'Starboy',
            size: 140,
          ),
          SizedBox(width: 20),
          AlbumCard(
            img: AssetImage('assets/images/album2.jpg'),
            label: 'Best Mood',
            size: 140,
          ),
          SizedBox(width: 20),
          AlbumCard(
            img: AssetImage('assets/images/album3.jpg'),
            label: 'Best Party',
            size: 140,
          ),
          SizedBox(width: 20),
          AlbumCard(
            img: AssetImage('assets/images/album4.jpg'),
            label: 'Purple',
            size: 140,
          ),
          SizedBox(width: 20),
          AlbumCard(
            img: AssetImage('assets/images/album5.jpg'),
            label: 'Pain',
            size: 140,
          ),
        ],
      ),
    );
  }
}
