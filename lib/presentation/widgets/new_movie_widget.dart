import 'package:flutter/material.dart';

class NewMovieWidget extends StatelessWidget {
  const NewMovieWidget({super.key});

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
                "New Movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.06,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.04,
                  fontWeight: FontWeight.w500,
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
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "movieScreen");
                  },
                  child: Container(
                    width: screenSize.width * 0.45,
                    height: screenSize.height * 0.45,
                    margin: EdgeInsets.only(left: screenSize.width * 0.02),
                    decoration: BoxDecoration(
                      color: const Color(0xFF292B37),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF292B37).withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            "images/new$i.jpg",
                            height: screenSize.height * 0.3,
                            width: screenSize.width * 0.45,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: screenSize.height * 0.015,
                            horizontal: 5,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Movie Title",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenSize.width * 0.05,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Action/Adventure",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: screenSize.width * 0.035,
                                ),
                              ),
                              SizedBox(height: screenSize.height * 0.005),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: screenSize.width * 0.05,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: screenSize.width * 0.05,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: screenSize.width * 0.05,
                                  ),
                                  Text(
                                    "8.5",
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: screenSize.width * 0.04,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "movieScreen");
                  },
                  child: Container(
                    width: screenSize.width * 0.45,
                    height: screenSize.height * 0.45,
                    margin: EdgeInsets.only(left: screenSize.width * 0.02),
                    decoration: BoxDecoration(
                      color: const Color(0xFF292B37),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF292B37).withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            "images/new$i.jpg",
                            height: screenSize.height * 0.3,
                            width: screenSize.width * 0.45,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: screenSize.height * 0.015,
                            horizontal: 5,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Movie Title",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenSize.width * 0.05,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Action/Adventure",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: screenSize.width * 0.035,
                                ),
                              ),
                              SizedBox(height: screenSize.height * 0.005),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: screenSize.width * 0.05,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: screenSize.width * 0.05,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: screenSize.width * 0.05,
                                  ),
                                  Text(
                                    "8.5",
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: screenSize.width * 0.04,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
