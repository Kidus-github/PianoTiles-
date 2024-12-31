import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:piano_tiles/screens/home_screen/widget/game_music_list.dart';
import 'package:piano_tiles/screens/home_screen/widget/play_status_bar.dart';
import 'package:piano_tiles/screens/home_screen/widget/topbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<IconData> icons = [
    Icons.home,
    Icons.music_note,
    ZondIcons.trophy,
    Icons.storefront,
    Icons.settings
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(fit: StackFit.passthrough, children: [
          Container(
            height: double.infinity,
            child: Image.asset(
              "assets/images/background.gif",
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                TopBar(),
                SizedBox(
                  height: 40,
                ),
                PlayStatusBar(),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: GameMusicList(),
                  ),
                )
              ],
            ),
          ),
        ]),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...icons.map((icon) => IconButton(
                    onPressed: () {},
                    icon: Icon(icon),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
