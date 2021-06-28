import 'package:facebook/theme/colors.dart';
import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey.withOpacity(0.4),
          elevation: 0.0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: primary)),
          title: Row(
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1579783483458-83d02161294e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Someones name",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text("Active now",
                      style: TextStyle(
                          fontSize: 14, color: Colors.black.withOpacity(0.4)))
                ],
              )
            ],
          ),
          actions: <Widget>[
            Icon(Icons.call, color: Colors.black),
            SizedBox(width: 15),
            Icon(Icons.video_camera_back, color: Colors.black),
            SizedBox(width: 10),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(color: online, shape: BoxShape.circle),
            ),
            SizedBox(width: 15),
          ]),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(padding: EdgeInsets.all(10), children: <Widget>[
      Row(children: <Widget>[
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1474447976065-67d23accb1e3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 20),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Container(
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child:
                  Text("what are you up to?", style: TextStyle(fontSize: 15)),
            ),
          ),
        )
      ])
    ]);
  }
}
