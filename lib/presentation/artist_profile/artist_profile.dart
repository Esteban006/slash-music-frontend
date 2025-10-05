import 'package:flutter/material.dart';
import 'widgets/artist_header.dart';
import 'widgets/album_list.dart';
import 'widgets/song_list.dart';

class ArtistProfilePage extends StatelessWidget {
  const ArtistProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ArtistHeader(),
              SizedBox(height: 20),
              AlbumList(),
              SizedBox(height: 20),
              SongList(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
