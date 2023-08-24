import 'package:flutter/material.dart';

class NowPLaying extends StatefulWidget {
  const NowPLaying({super.key});

  @override
  State<NowPLaying> createState() => _NowPLayingState();
}

class _NowPLayingState extends State<NowPLaying> {
  var _playerProgress = 0.2;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            Center(
              child: Column(
                children: [
                  Text("Now Playing"),
                  Text(
                    "Title",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            //Cover Art
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                width: 400,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Artist",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(),
            //Progress Bar
            Slider(
              min: 0,
              max: 100,
              value: _playerProgress,
              onChanged: (value) {
                setState(() {
                  _playerProgress = value;
                });
              },
            ),
            Divider(),
            //Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.shuffle),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  onPressed: () {},
                  iconSize: 75,
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {},
                  iconSize: 75,
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: () {},
                  iconSize: 75,
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {},
                ),
              ],
            )
          ],
        );
      },
    );
  }
}