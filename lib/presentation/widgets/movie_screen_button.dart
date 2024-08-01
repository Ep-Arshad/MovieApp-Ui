import 'package:flutter/material.dart';

class MovieScreenButton extends StatelessWidget {
  const MovieScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIconButton(Icons.add, screenSize),
          _buildIconButton(Icons.favorite_border, screenSize),
          _buildIconButton(Icons.download, screenSize),
          _buildIconButton(Icons.share, screenSize),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, Size screenSize) {
    return Container(
      padding: EdgeInsets.all(screenSize.width * 0.025),
      decoration: BoxDecoration(
        color: const Color(0xFF292B37),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF292B37).withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: screenSize.width > 600 ? 40 : 35,
      ),
    );
  }
}