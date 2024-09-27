import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  CategoryCard({required this.title, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.black, size: 40),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );

  }
}
