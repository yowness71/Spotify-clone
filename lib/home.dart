import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List album = [
    {
      //key : value
      "name": "21Savage",
      "image": "assets/img/6.jpg",
    },
    {
      //key : value
      "name": "Juice Wrld",
      "image": "assets/img/2.jpg",
    },
    {
      //key : value
      "name": "Drake",
      "image": "assets/img/3.jpg",
    },
    {
      //key : value
      "name": "Travis",
      "image": "assets/img/5.jpg",
    },
    {
      //key : value
      "name": "Kanye West",
      "image": "assets/img/4.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color.fromARGB(255, 30, 30, 30),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: const Text(
                    "Good afternoon",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  padding: const EdgeInsets.only(top: 40, right: 20),
                  child: const Icon(
                    Ionicons.notifications_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 40, right: 20),
                  child: Icon(
                    Ionicons.time_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 40, right: 20),
                  child: Icon(
                    Ionicons.settings_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  margin:
                      EdgeInsets.only(top: 25, bottom: 25, left: 20, right: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 68, 68, 68),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Music",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  margin: EdgeInsets.only(top: 25, bottom: 25, right: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 68, 68, 68),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Podcasts & Shows",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    children: [
                      //liked songs
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 68, 68, 68),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 60,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                              child: Image.asset(
                                'assets/img/1.jpg',
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: const Text(
                                "Liked Songs",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //juice wrld
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 68, 68, 68),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 60,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                              child: Image.asset(
                                'assets/img/2.jpg',
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: const Text(
                                "Juice Wrld",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //Drake
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 68, 68, 68),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 60,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                              child: Image.asset(
                                'assets/img/3.jpg',
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: const Text(
                                "Drake",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      // kanye wesy
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 68, 68, 68),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 60,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                              child: Image.asset(
                                'assets/img/4.jpg',
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: const Text(
                                "Kanye West",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //travis scott
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 68, 68, 68),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 60,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                              child: Image.asset(
                                'assets/img/5.jpg',
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: const Text(
                                "Travis Scott",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //21 savage
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 68, 68, 68),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 60,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                              child: Image.asset(
                                'assets/img/6.jpg',
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: const Text(
                                "21 Savage",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                "Your top mixes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(album.length, (index) {
                      // Generate a random color for each tile
                      Color randomColor =
                          Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                              .withOpacity(1.0);

                      return Container(
                        width: 160,
                        height: 160,
                        color:
                            randomColor, // Assign the random color to the tile
                        margin: EdgeInsets.only(left: 20),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              child: Image.asset(
                                album[index]["image"],
                                height: 160,
                                width: 160,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 7,
                                      height: 20,
                                      margin: EdgeInsets.only(bottom: 5),
                                      color:
                                          randomColor, // Use the same random color for the indicator
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 10, bottom: 5),
                                      child: Row(
                                        children: [
                                          Text(
                                            album[index]["name"],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          Text(
                                            " Mix",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 5,
                                  color: randomColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
