import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
        child: Column(
          children: [
            // Foto de perfil
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://media.istockphoto.com/id/1319763895/es/foto/sonriente-raza-mixta-hombre-maduro-sobre-fondo-gris.jpg?s=612x612&w=0&k=20&c=sGBwMEZr8RdyFuOF0084teSTc1TwMzdpHjowP9QRWTw='),
            ),
            const SizedBox(height: 16),

            // Nombre del usuario
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            // Bio o descripción
            const Text(
              'Lover of indie and lo-fi. Music is my escape.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            const SizedBox(height: 32),

            // Título sección
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'My Playlist',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 16),

            // Lista de canciones recientes
            ListTile(
              leading: const Icon(Icons.music_note, color: Colors.green),
              title: const Text('Lovely'),
              subtitle: const Text('Billie Eilish'),
              trailing: const Text('3:21'),
            ),
            ListTile(
              leading: const Icon(Icons.music_note, color: Colors.green),
              title: const Text('Happier Than Ever'),
              subtitle: const Text('Billie Eilish'),
              trailing: const Text('4:58'),
            ),
            ListTile(
              leading: const Icon(Icons.music_note, color: Colors.green),
              title: const Text('When the Party’s Over'),
              subtitle: const Text('Billie Eilish'),
              trailing: const Text('3:16'),
            ),
               ListTile(
              leading: const Icon(Icons.music_note, color: Colors.green),
              title: const Text('Lovely'),
              subtitle: const Text('Billie Eilish'),
              trailing: const Text('3:21'),
            ),
            ListTile(
              leading: const Icon(Icons.music_note, color: Colors.green),
              title: const Text('Happier Than Ever'),
              subtitle: const Text('Billie Eilish'),
              trailing: const Text('4:58'),
            ),
            ListTile(
              leading: const Icon(Icons.music_note, color: Colors.green),
              title: const Text('When the Party’s Over'),
              subtitle: const Text('Billie Eilish'),
              trailing: const Text('3:16'),
            ),
            ListTile(
              leading: const Icon(Icons.music_note, color: Colors.green),
              title: const Text('Lovely'),
              subtitle: const Text('Billie Eilish'),
              trailing: const Text('3:21'),
            ),
            ListTile(
              leading: const Icon(Icons.music_note, color: Colors.green),
              title: const Text('Happier Than Ever'),
              subtitle: const Text('Billie Eilish'),
              trailing: const Text('4:58'),
            ),
            ListTile(
              leading: const Icon(Icons.music_note, color: Colors.green),
              title: const Text('When the Party’s Over'),
              subtitle: const Text('Billie Eilish'),
              trailing: const Text('3:16'),
            )
          ],
        ),
      ),
    );
  }
}
