import 'package:composite_pattern/IFeed.dart';
import 'package:composite_pattern/feedImage.dart';
import 'package:composite_pattern/feed.dart';
import 'package:composite_pattern/feedYoutube.dart';
import 'package:flutter/material.dart';

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<IFeed> listaFeeds = [];
    listaFeeds.add(Feed(title: "Era uma vez..", description: "Noticia relacionada a XPTO."));
    listaFeeds.add(Feed(title: "ba bla bla", description: "Acertaram na loteria"));
    listaFeeds.add(FeedImage(title: "Doguinho", url: "https://picsum.photos/id/237/500/300"));
    listaFeeds.add(FeedYoutube("Video bacana","aPmh73eYhH8"));
    listaFeeds.add(FeedImage(title: "Vai ter uma imagem aqui", url: "https://picsum.photos/500/300"));

    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: listaFeeds.length,
                itemBuilder: (_, index) {
                  return listaFeeds[index].renderBody();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
