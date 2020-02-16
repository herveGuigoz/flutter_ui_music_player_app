import 'package:flutter/material.dart';
import 'package:music_player_app/theme.dart';

import 'custom_text_field.dart';
import 'item_card.dart';
import 'song_item.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 32.0),
            CustomTextField(),
            SizedBox(height: 32.0),
            Text(
              'Collections',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 38.0),
            ),
            SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                ItemCard('assets/images/blue.jpg', 'Extremely loud'),
                SizedBox(
                  width: 16.0,
                ),
                ItemCard('assets/images/pink.jpg', 'Calm & relaxing'),
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            Row(
              children: <Widget>[
                ItemCard('assets/images/orange.jpg', 'Extremely loud'),
                SizedBox(
                  width: 16.0,
                ),
                ItemCard('assets/images/yellow.jpg', 'Old Soul'),
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            Text(
              'Recommend',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 38.0),
            ),
            SizedBox(
              height: 16.0,
            ),
            SongItem('In the Name of Love', 'Martin Garrix', martinGarrix),
            SongItem('Never Be Like You', 'Flume', flume),
            SongItem('Worry Bout Us', 'Rosie Lowe', rosieLowe),
            SongItem('In the Name of Love', 'Martin Garrix', martinGarrix),
            SongItem('In the Name of Love', 'Martin Garrix', martinGarrix),
          ],
        ),
      ),
    );
  }
}
