import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:spotifyclone2/home.dart';
import 'package:spotifyclone2/library.dart';
import 'package:spotifyclone2/premium.dart';
import 'package:spotifyclone2/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var index = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            index == 0
                ? Home()
                : index == 1
                    ? Search()
                    : index == 2
                        ? Library()
                        : Premium()
          ],
        ),
        bottomNavigationBar: Container(
          height: 55,
          color: const Color.fromARGB(255, 38, 38, 38),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        index == 0 ? Ionicons.home : Ionicons.home_outline,
                        color: index == 0
                            ? Colors.white
                            : const Color.fromARGB(255, 136, 136, 136),
                        size: 30,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: index == 0
                              ? Colors.white
                              : const Color.fromARGB(255, 136, 136, 136),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        index == 1 ? Ionicons.search : Ionicons.search_outline,
                        color: index == 1
                            ? Colors.white
                            : const Color.fromARGB(255, 136, 136, 136),
                        size: 30,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                          color: index == 1
                              ? Colors.white
                              : const Color.fromARGB(255, 136, 136, 136),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        index == 2
                            ? Ionicons.library
                            : Ionicons.library_outline,
                        color: index == 2
                            ? Colors.white
                            : const Color.fromARGB(255, 136, 136, 136),
                        size: 30,
                      ),
                      Text(
                        "Library",
                        style: TextStyle(
                          color: index == 2
                              ? Colors.white
                              : const Color.fromARGB(255, 136, 136, 136),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 3;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        MdiIcons.spotify,
                        color: index == 3
                            ? Colors.white
                            : const Color.fromARGB(255, 136, 136, 136),
                        size: 30,
                      ),
                      Text(
                        "Premium",
                        style: TextStyle(
                          color: index == 3
                              ? Colors.white
                              : const Color.fromARGB(255, 136, 136, 136),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
