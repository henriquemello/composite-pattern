import 'package:composite_pattern/feed.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FeedYoutube extends Feed {
  final String title;
  final String videoId;
  final YoutubePlayerController controller;

  FeedYoutube(this.title, this.videoId)
      : controller = YoutubePlayerController(
          initialVideoId: videoId,
          flags: YoutubePlayerFlags(
            autoPlay: false,
          ),
        ),
        super(title: title);

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
            child: YoutubePlayer(
              controller: controller,
              showVideoProgressIndicator: true,
            ),
          ),
          renderBottom(),
        ],
      ),
    );
  }
}
