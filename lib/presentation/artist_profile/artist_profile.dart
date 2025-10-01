import 'package:flutter/material.dart';

class ArtistProfilePage extends StatelessWidget {
  const ArtistProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("The Slashers"),
              background: Image.network(
                "https://images.unsplash.com/photo-1511379938547-c1f69419868d",
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Biografía",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "The Slashers es una banda de rock alternativo con influencias electrónicas. "
                    "Han lanzado 3 álbumes y cuentan con miles de oyentes en todo el mundo.",
                  ),
                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      _StatWidget(label: "Seguidores", value: "45k"),
                      _StatWidget(label: "Reproducciones", value: "1.2M"),
                      _StatWidget(label: "Álbumes", value: "3"),
                    ],
                  ),
                  const SizedBox(height: 20),

                  const Text(
                    "Álbumes",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  _AlbumTile(
                    title: "Electric Dreams",
                    year: "2023",
                    cover: "https://i.scdn.co/image/ab67616d0000b273d0c4f88d7a",
                  ),
                  _AlbumTile(
                    title: "Neon Nights",
                    year: "2021",
                    cover: "https://i.scdn.co/image/ab67616d0000b273f9d91293a",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatWidget extends StatelessWidget {
  final String label;
  final String value;
  const _StatWidget({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

class _AlbumTile extends StatelessWidget {
  final String title;
  final String year;
  final String cover;

  const _AlbumTile({required this.title, required this.year, required this.cover});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(cover, width: 50, height: 50, fit: BoxFit.cover),
      title: Text(title),
      subtitle: Text("Lanzado en $year"),
      trailing: const Icon(Icons.play_arrow),
    );
  }
}
