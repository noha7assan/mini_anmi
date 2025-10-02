import 'package:flutter/material.dart';
import 'package:mini_app/screens/homeScreen/filter_chip.dart';
import 'package:mini_app/screens/homeScreen/come_alive.dart';
import 'package:mini_app/screens/homeScreen/top_character.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedFilter = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFDEE3FF), Color(0xFFEFF2FF)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -100.61,
              left: 180.39,
              child: Transform.rotate(
                angle: 29 * 3.1416 / 180,
                child: Opacity(
                  opacity: 1.0,
                  child: Image.asset(
                    'assets/images/Star 2.png',
                    width: 432,
                    height: 432,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'ًWhere Anime Come Alive ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  FilterChipsRow(
                    selectedFilter: selectedFilter,
                    onFilterSelected: (filter) {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                  ),
                  const SizedBox(height: 24),
                  ComeAlive(),
                  const SizedBox(height: 10),
                  const Text(
                    'ًTop Charachters  ',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  TopCharacter(),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
