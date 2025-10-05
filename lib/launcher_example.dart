import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchExample extends StatelessWidget {
  const LaunchExample({super.key});

  Future<void> _launchURL() async {
    final Uri url = Uri.parse('https://www.google.com');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('No se pudo abrir el enlace');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplo URL Launcher')),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: const Text('Abrir Google'),
        ),
      ),
    );
  }
}
