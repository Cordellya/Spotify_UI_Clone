import 'package:flutter/material.dart';

class DailyMixContainer extends StatelessWidget {
  const DailyMixContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Good Evening",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: 20),
        Row(
          children: [
            DailyMixCard(
              img: AssetImage('assets/images/album6.jpg'),
              label: 'Daily Mix 1',
            ),
            SizedBox(width: 15),
            DailyMixCard(
              img: AssetImage('assets/images/album13.jpg'),
              label: 'Daily Mix 2',
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            DailyMixCard(
              img: AssetImage('assets/images/album11.jpg'),
              label: 'Daily Mix 1',
            ),
            SizedBox(width: 15),
            DailyMixCard(
              img: AssetImage('assets/images/album12.jpg'),
              label: 'Daily Mix 2',
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            DailyMixCard(
              img: AssetImage('assets/images/album7.jpg'),
              label: 'Daily Mix 1',
            ),
            SizedBox(width: 15),
            DailyMixCard(
              img: AssetImage('assets/images/album8.jpg'),
              label: 'Daily Mix 2',
            ),
          ],
        ),
      ],
    );
  }
}

class DailyMixCard extends StatelessWidget {
  final ImageProvider img;
  final String label;
  const DailyMixCard({
    Key key,
    this.img,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white10, borderRadius: BorderRadius.circular(5)),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: img,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10),
            Text(label),
          ],
        ),
      ),
    );
  }
}
