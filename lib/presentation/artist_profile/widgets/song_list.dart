import 'package:flutter/material.dart';

class SongList extends StatelessWidget {
  const SongList({super.key});

  @override
  Widget build(BuildContext context) {
final songs = [
  {'title': 'Ocean Eyes', 'duration': '3:20'},
  {'title': 'Bad Guy', 'duration': '3:14'},
  {'title': 'Lovely', 'duration': '3:21'},
  {'title': 'Happier Than Ever', 'duration': '4:58'},
  {'title': 'Everything I Wanted', 'duration': '4:05'},
  {'title': 'When the Party’s Over', 'duration': '3:16'},
];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Encabezado con "See More"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Songs',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'See More',
                style: TextStyle(fontSize: 14, color: Colors.green),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Lista de canciones
          ...songs.map((song) => ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.play_circle_fill_rounded,
                    size: 32, color: Colors.green),
                title: Text(song['title']!),
                subtitle: const Text('Billie Eilish'),
                trailing: Text(song['duration']!),
              )),
        ],
      ),
    );
  }
}
