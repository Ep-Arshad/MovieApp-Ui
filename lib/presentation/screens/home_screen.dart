import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp_ui/presentation/widgets/custom_navigation_bar.dart';
import 'package:movieapp_ui/presentation/widgets/new_movie_widget.dart';
import 'package:movieapp_ui/presentation/widgets/upcoming_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.05, horizontal: screenSize.width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello User",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "What to Watch?",
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "images/profile.png",
                        height: 45,
                        width: 45,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
                child: const CupertinoSearchTextField(
                  padding: EdgeInsets.all(15),
                  itemColor: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              const Upcomingwidget(),
              const SizedBox(height: 40),
              const NewMovieWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}