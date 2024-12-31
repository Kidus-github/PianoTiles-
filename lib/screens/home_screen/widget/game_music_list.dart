import 'package:flutter/material.dart';
import 'package:piano_tiles/screens/home_screen/widget/game_music_card.dart';

class GameMusicList extends StatelessWidget {
  const GameMusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GameMusicCard(
          imgsrc: 'assets/images/croped.png',
          name: 'Raya Sekota beat\n',
          descripiton: 'Song by sekota',
          liked: false,
          mucicsrc: 'Song by sekota',
          star: 2,
        ),
        GameMusicCard(
          imgsrc: 'assets/images/croped.png',
          name: 'Raya Sekota beat\n',
          descripiton: 'Song by sekota',
          liked: false,
          mucicsrc: 'Raya Sekota beat\n',
          star: 3,
        ),
        GameMusicCard(
          imgsrc: 'assets/images/croped.png',
          name: 'Raya Sekota beat\n',
          descripiton: 'Song by sekota',
          liked: false,
          mucicsrc: 'Raya Sekota beat\n',
          star: 3,
        ),
        GameMusicCard(
          imgsrc: 'assets/images/croped.png',
          name: 'Raya Sekota beat\n',
          descripiton: 'Song by sekota',
          liked: false,
          mucicsrc: 'Raya Sekota beat\n',
          star: 1,
        ),
        GameMusicCard(
          imgsrc: 'assets/images/croped.png',
          name: 'Raya Sekota beat\n',
          descripiton: 'Song by sekota',
          liked: false,
          mucicsrc: 'Song by sekota',
          star: 2,
        ),
        GameMusicCard(
          imgsrc: 'assets/images/croped.png',
          name: 'Raya Sekota beat\n',
          descripiton: 'Song by sekota',
          liked: false,
          mucicsrc: 'Raya Sekota beat\n',
          star: 3,
        ),
        GameMusicCard(
          imgsrc: 'assets/images/croped.png',
          name: 'Raya Sekota beat\n',
          descripiton: 'Song by sekota',
          liked: false,
          mucicsrc: 'Raya Sekota beat\n',
          star: 3,
        ),
        GameMusicCard(
          imgsrc: 'assets/images/croped.png',
          name: 'Raya Sekota beat\n',
          descripiton: 'Song by sekota',
          liked: false,
          mucicsrc: 'Raya Sekota beat\n',
          star: 1,
        ),
      ],
    );
  }
}
