import 'package:flutter/material.dart';
import 'package:trivial_rush/screens/home_page_screen.dart';
import '../widgets/info_page_items.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalPages = InfoPageItems.loadOnBoardItem().length;
    return Scaffold(
      body: PageView.builder(
        itemCount: totalPages,
        itemBuilder: (BuildContext context, int index) {
          InfoPageItem onBoardPages = InfoPageItems.loadOnBoardItem()[index];
          return Container(
            height: MediaQuery.of(context).size.height,
            width: 358,
            color: Colors.white,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 80,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
// ***************** Title *****************************************************

                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 10),
                            child: onBoardPages.title,
                          ),

// ***************** Main Text *************************************************

                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 16.0),
                            child: onBoardPages.mainText,
                          ),

// ***************** Image *****************************************************

                          onBoardPages.image,
                        ],
                      ),
                    ),
                  ),

// ***************** Pages Indicator *******************************************

                  if (index != 3)
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: SizedBox(
                        width: 56,
                        height: 12,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: totalPages,
                          itemBuilder: (context, int i) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                left: 2,
                              ),
                              child: Container(
                                width: 12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: index == i
                                      ? onBoardPages.color
                                      : const Color.fromRGBO(196, 196, 196, 1),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )

// ***************** Go To Home Page Button ************************************

                  else
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          width: 141,
                          height: 41,
                          decoration: const BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Go To HomePage',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}