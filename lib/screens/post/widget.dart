import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 15,
            top: 15,
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Center(
            child: Hero(
              tag: 'post-hero',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://avatars.githubusercontent.com/u/60530946?s=460&u=e342f079ed3571122e21b42eedd0ae251a9d91ce&v=4'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
