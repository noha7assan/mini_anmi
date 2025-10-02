// 📁 lib/page_view.dart
import 'package:flutter/material.dart';

class ComeAlive extends StatelessWidget {
  const ComeAlive({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 310, //
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildTile(
                imageUrl: '1.png',
                title: 'Detective conan',
                subtitle: 'mystrey ',
              ),
              _buildTile(
                imageUrl: '2.png',
                title: 'Hunter X Hunter',
                subtitle: 'advanture',
              ),
              _buildTile(
                imageUrl: '3.jpg',
                title: 'Dragon Ball',
                subtitle: ' dangerous',
              ),
            ],
          ),
        ),
      ], //
    ); //
  } //

  Widget _buildTile({
    required String imageUrl,
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8), // زوايا ناعمة للصورة
                child: Image.asset(
                  'assets/images/$imageUrl',
                  width: 200,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          _buildRate(),
        ],
      ),
    );
  }
}

Widget _buildRate() {
  return Positioned(
    top: 8,
    right: 8,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(Icons.star, color: Colors.amber, size: 14),
          const SizedBox(width: 4),
          Text(
            '5.0',
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    ),
  );
}
