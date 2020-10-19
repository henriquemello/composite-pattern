import 'package:composite_pattern/IFeed.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Feed implements IFeed {
  final String title;
  final String description;
  final DateTime publishDate;

  Feed({@required this.title, this.description}) : publishDate = DateTime.now();

  @override
  Widget renderTitle() {
    return Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
  }

  @override
  Widget renderBody() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.blue[50],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            renderTitle(),
            Text(description),
            renderBottom(),
          ],
        ),
      ),
    );
  }

  @override
  Widget renderBottom() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 20),
          Text(
            "Enviado às ${DateFormat('dd/MM/yyyy HH:mm:ss').format(publishDate)}",
            style: TextStyle(fontSize: 12, color: Colors.black38),
          ),
        ],
      ),
    );
  }
}
