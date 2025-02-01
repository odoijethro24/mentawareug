import 'package:flutter/material.dart';
import 'package:mentaware_ug/main_menu/shared/main_menu_card.dart';
import 'package:mentaware_ug/main_menu/shared/main_menu_panel.dart';
import 'package:mentaware_ug/main_menu/shared/main_menu_side_panel.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(245, 245, 245, 1), // Light gray background
      body: MediaQuery.of(context).size.width < 750
          ? Column(
              children: [
                Expanded(
                    flex: 1,
                    child: MainMenuPanel()), // Smaller panel for mobile
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GridView.count(
                      crossAxisCount: 2, // 2 columns for mobile
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1, // Ensure cards are square
                      children: [
                        MainMenuCard(
                          height: 150,
                          width: 150,
                          onTap: () {
                            Navigator.pushNamed(context, '/testMenu');
                          },
                          icon: 'assets/icons/web-test.png',
                          text: 'Take A Test',
                        ),
                        MainMenuCard(
                          height: 150,
                          width: 150,
                          onTap: () {
                            Navigator.pushNamed(context, '/talkToProfessional');
                          },
                          icon: 'assets/icons/bubble-discussion.png',
                          text: 'Talk To Professional',
                        ),
                        MainMenuCard(
                          height: 150,
                          width: 150,
                          onTap: () {},
                          icon: 'assets/icons/laugh-beam.png',
                          text: 'Happy Corner',
                        ),
                        MainMenuCard(
                          height: 150,
                          width: 150,
                          onTap: () {},
                          icon: 'assets/icons/meditation.png',
                          text: 'Meditation',
                        ),
                        MainMenuCard(
                          height: 150,
                          width: 150,
                          onTap: () {},
                          icon: 'assets/icons/dumbbell-heart.png',
                          text: 'Exercise',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Row(
              children: [
                Expanded(
                    flex: 1,
                    child: MainMenuSidePanel()), // Side panel for desktop
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GridView.count(
                      crossAxisCount: 3, // 3 columns for desktop
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1, // Ensure cards are square
                      children: [
                        MainMenuCard(
                          height: 200,
                          width: 200,
                          onTap: () {
                            Navigator.pushNamed(context, '/testMenu');
                          },
                          icon: 'assets/icons/web-test.png',
                          text: 'Take A Test',
                        ),
                        MainMenuCard(
                          height: 200,
                          width: 200,
                          onTap: () {
                            Navigator.pushNamed(context, '/talkToProfessional');
                          },
                          icon: 'assets/icons/bubble-discussion.png',
                          text: 'Talk To Professional',
                        ),
                        MainMenuCard(
                          height: 200,
                          width: 200,
                          onTap: () {},
                          icon: 'assets/icons/laugh-beam.png',
                          text: 'Happy Corner',
                        ),
                        MainMenuCard(
                          height: 200,
                          width: 200,
                          onTap: () {},
                          icon: 'assets/icons/meditation.png',
                          text: 'Meditation',
                        ),
                        MainMenuCard(
                          height: 200,
                          width: 200,
                          onTap: () {},
                          icon: 'assets/icons/dumbbell-heart.png',
                          text: 'Exercise',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
