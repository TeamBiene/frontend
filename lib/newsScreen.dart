import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

import 'models/News.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  late Future<List<News>> _newsList;

  @override
  void initState() {
    super.initState();
    _newsList = fetchNews();
  }

  Future<List<News>> fetchNews() async {
    final response = await http.get(Uri.parse(
        'https://api.bee.tust.at/news?association=cl686rjxd000009mmabyld8us'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      List<News> newsList = (json.decode(response.body) as List)
          .map((i) => News.fromJson(i))
          .toList();
      return newsList;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: _newsList,
        builder: (BuildContext context, AsyncSnapshot<List<News>> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          // TODO: Sort priority
          return ListView(
              padding: EdgeInsets.all(8),
              children: snapshot.data!.map(((e) => NewsCard(e))).toList());
        },
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final News news;
  NewsCard(this.news);
  String abc = "abc";

  @override
  Widget build(BuildContext context) {
    // TODO: Also display date
    // TODO: Open new screen to show details and comments of event
    // TODO: Priority red pin
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            //leading: Icon(Icons.album),
            title: Text(news.title),
            subtitle: Text(
              news.content,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: <Widget>[
          //     TextButton(
          //       child: const Text('BUY TICKETS'),
          //       onPressed: () {/* ... */},
          //     ),
          //     const SizedBox(width: 8),
          //     TextButton(
          //       child: const Text('LISTEN'),
          //       onPressed: () {/* ... */},
          //     ),
          //     const SizedBox(width: 8),
          //   ],
          // ),
        ],
      ),
    );
  }
}
