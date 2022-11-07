import 'package:flutter/material.dart';
import 'package:trivial_rush/screens/home_page/widgets/home_page_items.dart';
import 'package:trivial_rush/screens/leaderboard/leaderboard_screen.dart';
import 'package:trivial_rush/screens/purchases/purchases_screen.dart';
import 'package:trivial_rush/screens/home_page/widgets/home_page_dropdown.dart';
import '../play_game/play_screen.dart';

/// created by Nahapet
/// Date: 14.10.22

/// [homePageItems] Widget for Home Page main items boxes, with styles
/// [dropdownListView] Widget for Home Page main items boxes, with styles

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

      /// DropDown Menu
      endDrawer: SafeArea(
        child: Drawer(
          width: 274,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
          ),

          ///
          child: dropdownListView(context),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// <<Padding>> between AppBar And body
              const SizedBox(
                height: 20,
              ),

              /// First Row items: `Play Now` and `Purchases`
              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    /// Play now
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlayScreen(),
                          ),
                        );
                      },
                      child: homePageItems(
                          containerColor: const Color.fromRGBO(103, 0, 153, 1),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                          imageAsset: 'assets/images/icon_1.png',
                          text: 'Play Now'),
                    ),

                    /// Purchases
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PurchasesScreen(),
                          ),
                        );
                      },
                      child: homePageItems(
                          containerColor: const Color.fromRGBO(0, 153, 0, 1),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                          imageAsset: 'assets/images/icon_2.png',
                          text: 'Purchases'),
                    ),
                  ],
                ),
              ),

              /// <<Padding>> between 1-st Row and 2-nd Row
              const SizedBox(
                height: 20,
              ),

              /// Second Row items: `Leaderboard` and `Profile`
              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    /// Leaderboard
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LeaderboardScreen(),
                          ),
                        );
                      },
                      child: homePageItems(
                          containerColor: const Color.fromRGBO(255, 102, 0, 1),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                          imageAsset: 'assets/images/icon_3.png',
                          text: 'Leaderboard'),
                    ),

                    ///Profile
                    GestureDetector(
                      onTap: () {},
                      child: homePageItems(
                          containerColor: const Color.fromRGBO(0, 51, 204, 1),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                          imageAsset: 'assets/images/icon_4.png',
                          text: 'Profile'),
                    ),
                  ],
                ),
              ),

              /// <<Padding>> between 2-nd row and `bottom image`
              const SizedBox(
                height: 5,
              ),

              /// Bottom Image
              Image.asset('assets/images/home_page.png'),
            ],
          ),
        ),
      ),
    );
  }
}
