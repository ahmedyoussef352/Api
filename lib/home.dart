import 'package:flutter/material.dart';

class Album extends StatefulWidget {
  dynamic card;
  Album({Key? key, this.card}) : super(key: key);

  @override
  _AlbumState createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/241019191_2970901503237743_2562448540688124093_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=obaSLHGV3FAAX95BpEc&_nc_ht=scontent.fcai22-1.fna&oh=21651d50d6880d712735cae7f67deff8&oe=61A61837')),
            title: Text(
              widget.card["name"],
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(widget.card["email"]),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              widget.card["body"],
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
