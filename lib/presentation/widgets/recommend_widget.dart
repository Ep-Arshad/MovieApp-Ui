import 'package:flutter/material.dart';

class RecommendWidget extends StatelessWidget {
  const RecommendWidget({super.key});

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
                "Recommended",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.06,
                  fontWeight: FontWeight.w500,
                ),
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
              for (int i = 1; i < 11; i++)
                Padding(
                  padding: EdgeInsets.only(left: screenSize.width * 0.02),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "images/cover$i.jpg",
                      height: screenSize.height * 0.30,
                      width: screenSize.width * 0.4,
                      fit: BoxFit.cover,
                    ),
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
              for (int i = 1; i < 11; i++)
                Padding(
                  padding: EdgeInsets.only(left: screenSize.width * 0.02),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "images/cover$i.jpg",
                      height: screenSize.height * 0.30,
                      width: screenSize.width * 0.4,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
