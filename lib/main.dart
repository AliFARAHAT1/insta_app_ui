import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black, fontSize: 26),
        ),
        leading: Icon(
          Icons.camera_alt_outlined,
          size: 33,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.send,
            color: Colors.black,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.notifications_active,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://img.particlenews.com/image.php?type=thumbnail_580x000&url=1XExGj_0jV5XSBw00"),
                      radius: 33,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.add),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.orangeAccent),
                      borderRadius: BorderRadius.circular(100)),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://img.particlenews.com/image.php?type=thumbnail_580x000&url=1XExGj_0jV5XSBw00"),
                    radius: 33,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://img.particlenews.com/image.php?type=thumbnail_580x000&url=1XExGj_0jV5XSBw00"),
                  radius: 33,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://img.particlenews.com/image.php?type=thumbnail_580x000&url=1XExGj_0jV5XSBw00"),
                            radius: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "username",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("location"),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset("assets/sunset.jpeg"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite_border),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.messenger_outline_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.send),
                        ],
                      ),
                      Icon(Icons.bookmark_border),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        '18 likes',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        'username',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Go where you feel the most alive.'),
                      Icon(
                        CupertinoIcons.tree,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        '#beautiful #morocco #nature #tangier',
                        style: TextStyle(color: Colors.indigo),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        '10 MINUTES AGO',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
