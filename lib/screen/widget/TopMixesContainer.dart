import 'package:flutter/material.dart';
import 'package:spotify_clone_ui/widget/TopMixesCard.dart';

class TopMixesContainer extends StatelessWidget {
  const TopMixesContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your top mixes',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopMixesCard(
                img: AssetImage('assets/images/album9.jpg'),
                label: 'Ariana Grande, Justin Bieber, Lofi, ...',
              ),
              SizedBox(width: 20),
              TopMixesCard(
                img: AssetImage('assets/images/album14.jpg'),
                label: 'Ariana Grande, Camila Cabello, Lofi, ...',
              ),
              SizedBox(width: 20),
              TopMixesCard(
                img: AssetImage('assets/images/album8.jpg'),
                label: 'Ariana Grande, Justin Bieber, Lofi, ...',
              ),
              SizedBox(width: 20),
              TopMixesCard(
                img: AssetImage('assets/images/album10.jpg'),
                label: 'Ariana Grande, Justin Bieber, Lofi, ...',
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
