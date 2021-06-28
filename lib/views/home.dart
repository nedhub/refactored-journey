import 'package:facebook/constant/data.dart';
import 'package:facebook/theme/colors.dart';
import 'package:facebook/views/details.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  "Chats",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.edit)
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  // controller: _searchController,
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => detail()));
                },
                child: Row(
                    children: List.generate(userStories.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                        width: 75,
                        height: 75,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(width: 2, color: blue_story)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 73,
                                  height: 73,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            userStories[index]['img']),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            userStories[index]['online']
                                ? Positioned(
                                    bottom: 10,
                                    left: 9,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: online,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 3,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        )),
                  );
                })),
              ),
            ),
            SizedBox(height: 30),
          ]),
    );
  }
}
