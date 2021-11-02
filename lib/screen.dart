import 'dart:html';

import 'package:comments/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'networkhelper.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  _AlbumScreenState createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  @override
  Future<List<dynamic>>? listofcomment;
  void initState() {
    super.initState();
    listofcomment = Networkhelper().getcomments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Comments'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: listofcomment,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Album(card: snapshot.data![index]);
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
