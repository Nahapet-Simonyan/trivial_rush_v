import 'package:flutter/material.dart';
import 'package:trivial_rush/screens/leaderboard_screen.dart';
import 'package:trivial_rush/screens/purchases_screen.dart';
import 'package:trivial_rush/widgets/home_page_dropdown.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/main_logo.png',
          width: 114,
          height: 84,
        ),
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(204, 0, 1, 1),
          size: 30,
        ),
        toolbarHeight: 100,
      ),
      endDrawer: SafeArea(
        child: Drawer(
          width: 274,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
          ),
          child: dropdownListView(context),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
// Main Side

// 1-st Row

              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    // Play now

                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 153,
                        height: 153,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(103, 0, 153, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icon_1.png'),
                            const Text(
                              'Play Now',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'AmericanTypeWriter',
                                fontWeight: FontWeight.w100,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Purchases

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PurchasesScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 153,
                        height: 153,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(0, 153, 0, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icon_2.png'),
                            const Text(
                              'Purchases',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'AmericanTypeWriter',
                                fontWeight: FontWeight.w100,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

// 2-nd Row

              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    //Leaderboard

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LeaderboardScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 153,
                        height: 153,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 102, 0, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icon_3.png'),
                            const Text(
                              'Leaderboard',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'AmericanTypeWriter',
                                fontWeight: FontWeight.w100,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Profile

                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 153,
                        height: 153,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(0, 51, 204, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icon_4.png'),
                            const Text(
                              'Profile',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'AmericanTypeWriter',
                                fontWeight: FontWeight.w100,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 5,
              ),

// Bottom Image

              Image.asset('assets/images/home_page.png'),
            ],
          ),
        ),
      ),
    );
  }
}
