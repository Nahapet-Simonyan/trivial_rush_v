import 'package:flutter/material.dart';

Widget purchasesItem(context, snapshot, colorList, index, item) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 8.0,
      horizontal: 16.0,
    ),
    child: index == snapshot?.data.length - 1
        ? Container(
            height: 97,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                )
              ],
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 84.75,
                        height: 84.75,
                        decoration: BoxDecoration(
                          color: colorList[index % colorList.length],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${item!.plays_count}',
                                style: const TextStyle(
                                  fontSize: 32,
                                  color: Colors.white,
                                  fontFamily: 'AmericanTypeWriter',
                                ),
                              ),
                              const Text(
                                'Plays',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'AmericanTypeWriter',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3.1,
                            height: 30,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                '${item.title}  ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'AmericanTypeWriter',
                                  color: colorList[index % colorList.length],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Text(
                              '\$${item.price}',
                              style: const TextStyle(
                                fontSize: 24,
                                fontFamily: 'AmericanTypeWriter',
                                color: Color.fromRGBO(71, 71, 71, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 1,
                    left: 1,
                    child: snapshot?.data[index].show_badge == true ?
                    Image.asset(
                        'assets/images/pp_dial.png')
                        : const SizedBox()),
              ],
            ),
          )
        : Container(
            height: 97,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                )
              ],
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              color: colorList[index % colorList.length],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${item!.plays_count}',
                                    style: const TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontFamily: 'AmericanTypeWriter',
                                    ),
                                  ),
                                  const Text(
                                    'Plays',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontFamily: 'AmericanTypeWriter',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 3.1,
                                height: 30,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    '${item.title}  ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'AmericanTypeWriter',
                                      color:
                                          colorList[index % colorList.length],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                child: Text(
                                  '${item.sub_title}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'AmericanTypeWriter',
                                    color: Color.fromRGBO(201, 201, 201, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      Text(
                        '\$${item.price}',
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'AmericanTypeWriter',
                          color: colorList[index % colorList.length],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 1,
                    left: 1,
                    child: snapshot?.data[index].show_badge == true
                        ? Image.asset('assets/images/pp_dial.png')
                        : const SizedBox()),
              ],
            ),
          ),
  );
}
