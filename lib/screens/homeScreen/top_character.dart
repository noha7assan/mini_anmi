// 📁 lib/page_view.dart
import 'package:flutter/material.dart';

class TopCharacter extends StatelessWidget {
  const TopCharacter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400, //
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildTile(
            imageUrl: 'ch1.png',
            title: 'Gon Freecss',
            subtitle: 'Hunter X Hunter ',
          ),
          _buildTile(
            imageUrl: 'ch2.png',
            title: 'Nuruteo Uzumaki',
            subtitle: 'Naruto',
          ),
          _buildTile(
            imageUrl: 'ch3.png',
            title: 'luffy',
            subtitle: ' one peice',
          ),
          _buildTile(imageUrl: 'ch4.jpg', title: 'conan', subtitle: '  peice'),
          _buildTile(imageUrl: 'ch5.jpg', title: 'gfgf', subtitle: '  peice'),
        ],
      ),
    );
  }

  Widget _buildTile({
    required String imageUrl,
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: 120,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60, // زوايا ناعمة للصورة
            backgroundImage: AssetImage('assets/images/${imageUrl}'),
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
    );
  }
}
