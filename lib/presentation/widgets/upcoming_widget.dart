import 'package:flutter/material.dart';

class Upcomingwidget extends StatelessWidget {
  const Upcomingwidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Movies",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.width * 0.06,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "See All",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: screenSize.width * 0.04,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: screenSize.height * 0.02),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1; i < 5; i++)
                Padding(
                  padding: EdgeInsets.only(left: screenSize.width * 0.02),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "images/slider$i.jpg",
                      height: screenSize.height * 0.25,
                      width: screenSize.width * 0.75,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }
}
