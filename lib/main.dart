// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_redesign/Icon_container.dart';
import 'package:spotify_redesign/time_container.dart';
import 'constants.dart';

void main() {
  runApp(MySpotify());
}

class MySpotify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25),
              // color: Colors.deepPurple,
              height: 130,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //MENU BUTTON
                  ReusableIconContainer(
                    specificIcon: 'lib/icons/menu.png',
                    iconHeight: 30,
                  ),

                  // PLAYLIST TEXT
                  Text(
                    'PLAYLIST',
                    style: kPlaylistText,
                  ),

                  // THREE DOTS CONTAINER.
                  ReusableIconContainer(
                    specificIcon: 'lib/icons/three_dots.png',
                    iconHeight: 30,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: ExactAssetImage('lib/icons/hero.jpeg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        // color: Colors.deepPurpleAccent,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'All Too Well',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 85),
                                  child: Text(
                                    'Borgorrrr',
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              width: 90,
                            ),
                            //LOVE ICON
                            Container(
                              padding:
                                  EdgeInsets.only(left: 20.0, bottom: 20.0),
                              child: Image.asset(
                                'lib/icons/love.png',
                                height: 40,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //mid column
              height: 470,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 17.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(3, 3),
                      blurRadius: 15,
                      spreadRadius: 1),
                  BoxShadow(
                      color: Colors.grey.shade800,
                      offset: Offset(-2, -2),
                      blurRadius: 15,
                      spreadRadius: 1),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // STARTING TIME
                TimeContainer('2:16'),
                ReusableIconContainer(
                    specificIcon: 'lib/icons/shuffle.png', iconHeight: 20),
                ReusableIconContainer(
                    specificIcon: 'lib/icons/repeat.png', iconHeight: 20),
                TimeContainer('10:10'),
                //
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 26.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    kDarkShadow,
                    BoxShadow(
                      color: Colors.grey.shade800,
                      offset: Offset(-2, -2),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 1.0,
                    activeTrackColor: Color.fromARGB(255, 180, 179, 179),
                    inactiveTrackColor: Colors.grey.shade800,
                    thumbColor: Color.fromARGB(255, 180, 179, 179),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5.0),
                  ),
                  child: Slider(
                    value: 2.0,
                    min: 1,
                    max: 10,
                    onChanged: (double newValue) {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // pause next previous
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableIconContainer(
                  specificIcon: 'lib/icons/previous.png',
                  iconHeight: 10,
                ),
                ReusableIconContainer(
                  specificIcon: 'lib/icons/pause.png',
                  iconHeight: 22,
                ),
                ReusableIconContainer(
                  specificIcon: 'lib/icons/next.png',
                  iconHeight: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
