import 'package:flutter/material.dart';
import 'package:test_f/core/platform.dart';
import 'package:test_f/core/temp_vars.dart';
import 'package:test_f/features/presentation/widgets/bottom_nav_bar.dart';
import 'package:test_f/features/presentation/widgets/card_text.dart';
import 'package:test_f/features/presentation/widgets/menu.dart';
import 'package:test_f/features/presentation/widgets/side_options.dart';
import 'package:test_f/features/presentation/widgets/slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isArrowBackPressed = false;
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    final screen = Screen(context);
    return Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              if (isMenuOpen) {
                setState(() {
                  isMenuOpen = false;
                });
              }
            },
            child: Container(
              width: screen.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/gym.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  if (!isArrowBackPressed)
                    Positioned(
                      top: 20,
                      left: 15,
                      child: IconButton(
                          icon: const Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              isMenuOpen = !isMenuOpen;
                            });
                          }),
                    ),
                  Positioned(
                    right: isArrowBackPressed
                        ? MediaQuery.of(context).size.width - 35
                        : 0,
                    bottom: 10,
                    child: Column(
                      children: [
                        if (!isArrowBackPressed) SideOptionsWidget(),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                                isArrowBackPressed = !isArrowBackPressed;
                              });
                          },
                          child: SliderWidget(
                            isArrowBackPressed: isArrowBackPressed,
                            onArrowPressed: () {
                              
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (!isArrowBackPressed)
                    CardTextWidget(
                      screen: screen,
                      content: card_text_content,
                      date: card_text_date,
                    ),
                  Positioned(
                    top: 0,
                    left: isMenuOpen
                        ? 0
                        : -500, 
                    child: MenuContainer(),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: isArrowBackPressed
            ? const SizedBox.shrink()
            : const MyBottomNavBar());
  }
}
