import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF2C1E51),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  // خلفية الصورة
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/back2.jpg', // ← غير المسار حسب صورتك
                      fit: BoxFit.cover,
                    ),
                  ),

                  // الصورة اللي فوق
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/images/b3.png',
                      height: 550,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // الصورة اللي في المنتصف
                  Positioned(
                    top: 470,
                    left: 0,
                    right: 0,
                    child: Image.asset('assets/images/group.png', height: 150),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Wrap(
                    spacing: 10,
                    children: [
                      FilterChip(
                        label: Text(
                          'Dark Fantasy',
                          textAlign: TextAlign.center,
                        ),
                        selected: true,
                        onSelected: (bool value) {},
                        selectedColor: Color(0xFF564C72),
                        labelStyle: TextStyle(color: Colors.white),
                        padding: EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 4,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      FilterChip(
                        label: Text('Action'),
                        selected: true,
                        onSelected: (bool value) {},
                        selectedColor: Color(0xFF564C72),
                        labelStyle: TextStyle(color: Colors.white),
                        padding: EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 4,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: RadialGradient(
                            colors: [
                              Color.fromARGB(255, 140, 89, 87),
                              Color(0xFF564C72),
                            ],
                            center: Alignment.topRight, // من الأعلى يمينًا
                            radius: 1.2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(
                                255,
                                154,
                                145,
                                145,
                              ).withOpacity(0.4),
                              blurRadius: 8,
                              offset: Offset(1, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          'Adventure',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                      // FilterChip(
                      //   label: Text('Adventure', textAlign: TextAlign.center),
                      //   selected: true,
                      //   onSelected: (bool value) {},
                      //   selectedColor: Color(0xFF564C72),
                      //   labelStyle: TextStyle(color: Colors.white),
                      //   padding: EdgeInsets.symmetric(
                      //     horizontal: 4,
                      //     vertical: 4,
                      //   ),
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(20),
                      //   ),
                      // ),
                    ],
                  ),
                  Divider(
                    color: Colors.white.withOpacity(0.2), //
                    thickness: 1, // سمك الخط
                    indent: 30, // مسافة من اليمين
                    endIndent: 30, // مسافة من الشمال
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50.0,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildStatItem(Icons.visibility, '9.3M'),
                        buildStatItem(Icons.favorite, '1.2M'),
                        buildStatItem(Icons.star, '4.8'),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white.withOpacity(
                      0.2,
                    ), // لون خفيف زي اللي في الصورة
                    thickness: 1, // سمك الخط
                    indent: 30, // مسافة من اليمين
                    endIndent: 30, // مسافة من الشمال
                  ),
                  Text(
                    'A tale of courage, family',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1.1,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[700],
                        ),
                        child: Text('Preview'),
                      ),
                      SizedBox(width: 12),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>((
                                states,
                              ) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.purple; // اللون عند الضغط

                                  return Colors.purple; // اللون عند الوقوف عليه
                                }
                                return Colors.grey[700]!; // اللون الأساسي
                              }),
                          foregroundColor: MaterialStateProperty.all(
                            Colors.white,
                          ),
                        ),
                        child: Text('Preview'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildStatItem(IconData icon, String value) {
  return Row(
    children: [
      Icon(icon, color: Colors.white, size: 16),
      SizedBox(width: 4),
      Text(value, style: TextStyle(color: Colors.white, fontSize: 12)),
    ],
  );
}
