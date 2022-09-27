import 'package:flutter/material.dart';

class MindRelax extends StatefulWidget {
  const MindRelax({super.key});

  @override
  State<MindRelax> createState() => _MindRelaxState();
}

class _MindRelaxState extends State<MindRelax> {
  @override
  Widget build(BuildContext context) {
    return Material(
       type: MaterialType.transparency,
      child: Container(
        color: Colors.white,
        child: _buildMainColumn(),
      ),
    );
  }
}

Widget _buildMainColumn() => ListView(
      children: [
        _buildImage(),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Mind Deep Relax',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 20, top: 5, right: 20),
          child: Text(
            'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin:
                const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 20),
            child: new TextButton(
                onPressed: null,
                child: Container(
                  height: 40,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(Icons.play_arrow_sharp),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Play Next Session',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            decoration: new BoxDecoration(
              color: Color.fromARGB(255, 3, 158, 162),
              borderRadius: new BorderRadius.circular(30),
            ),
          ),
        ),
        _buildSongItem('Sweet Memories', 'December 29 Pre-Launch',
            Color.fromARGB(255, 47, 128, 23)),
        _buildSongItem('A Day Dream', 'December 29 Pre-Launch',
            Color.fromARGB(255, 3, 158, 162)),
        _buildSongItem('Mind Explore', 'December 29 Pre-Launch',
            Color.fromARGB(255, 240, 146, 53)),
      ],
    );

Widget _buildImage() => Container(
      margin: EdgeInsets.only(top: 20),
      child: Image.asset('source/images/pic2.png'),
    );

Widget _buildSongItem(String title, String description, Color color) =>
    Container(
      padding: EdgeInsets.only(
        top: 10,
        left: 30,
        right: 30,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: new BoxDecoration(
              color: color,
              borderRadius: new BorderRadius.circular(15),
            ),
            child: new TextButton(
              onPressed: null,
              child: Icon(Icons.play_arrow_outlined),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                  Text(
                    description,
                    style: TextStyle(color: Colors.black, fontSize: 12.0),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 30,
            alignment: Alignment.centerRight,
            child: Image.asset('source/images/dots.png'),
          ),
        ],
      ),
    );
