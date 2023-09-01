import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgethome/button_item.dart';
import '../widgethome/highlight_view.dart';
import '../widgethome/photo_profile.dart';
import '../widgethome/stats_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.lock_open_rounded,
              color: Colors.black,
            ),
            SizedBox(width: 5),
            Text(
              "ahmadjaelani",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.add_box_outlined,
            color: Colors.black,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.menu,
            color: Colors.black,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          // Followers and Profile
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PhotoProfil(),
              StatsItem("200", "Postingan"),
              StatsItem("5756 JT", "Pengikut"),
              StatsItem("45", "Mengikuti"),
            ],
          ),
          // Biodata
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ahmadjaelani",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    text:
                        "The Link header includes pagination information about the next/previous pages ",
                    style: TextStyle(color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                          text: '#Hastag',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue)),
                      TextSpan(text: ' world!'),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Lihat Terjemahan",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Button Profile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonItem(textButton: "Edit Profil"),
                SizedBox(width: 10),
                ButtonItem(textButton: "Bagikan Profil"),
                SizedBox(width: 10),
                ButtonItem(icon: Icons.person_add_alt_outlined)
              ],
            ),
          ),
          // Highlight Item
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HighlightView(),
                  HighlightView(),
                  HighlightView(),
                  HighlightView(),
                  HighlightView(),
                  HighlightView(),
                  HighlightView(),
                  HighlightView(),
                ],
              ),
            ),
          ),
          // Menu Item
          Row(
            children: [
              Expanded(
                  child: ButtonItem(
                icon: Icons.grid_on_rounded,
                backgroundColor: Colors.white,
              )),
              Expanded(
                  child: ButtonItem(
                icon: Icons.assignment_ind_outlined,
                backgroundColor: Colors.white,
              )),
            ],
          ),
          // Grid item
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
            itemBuilder: (context, index) {
              return Image.network(
                "https://picsum.photos/100/300",
                fit: BoxFit.cover,
              );
            },
            itemCount: 50,
          )
        ],
      ),
      bottomNavigationBar:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
      ]),
    );
  }
}
