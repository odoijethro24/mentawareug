import 'package:flutter/material.dart';
import 'package:mentaware_ug/main_menu/shared/main_menu_card.dart';
import 'package:mentaware_ug/main_menu/shared/main_menu_panel.dart';
import 'package:mentaware_ug/main_menu/shared/main_menu_side_panel.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 245, 225, 1),
      body: MediaQuery.of(context).size.width < 750
          ? Column(
              children: [
                Expanded(flex: 2, child: MainMenuPanel()),
                Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                Navigator.pushNamed(
                                    context, '/talkToProfessional');
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
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            )
          : Row(
              children: [
                Expanded(flex: 2, child: MainMenuSidePanel()),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                onTap: () {},
                                icon: 'assets/icons/bubble-discussion.png',
                                text: 'Talk To Professional',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MainMenuCard(
                                height: 200,
                                width: 200,
                                onTap: () {},
                                icon: 'assets/icons/dumbbell-heart.png',
                                text: 'Exercise',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
