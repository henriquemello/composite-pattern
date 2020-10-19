import 'package:composite_pattern/feed.dart';
import 'package:flutter/material.dart';

class FeedImage extends Feed {
  final String title;
  final String url;
  FeedImage({this.title, this.url}) : super(title: title);

  @override
  Widget renderBody() {
    return Card(
      color: Colors.blue[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: renderTitle(),
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(url),
                fit: BoxFit.cover,
              ),
            ),
          ),
          renderBottom(),
        ],
      ),
    );
  }
}
