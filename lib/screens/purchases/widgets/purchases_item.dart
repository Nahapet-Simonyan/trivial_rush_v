import 'package:flutter/material.dart';
import 'package:trivial_rush/screens/purchases/widgets/purchases_container.dart';
import 'package:trivial_rush/screens/purchases/widgets/players_item_box.dart';
import 'package:trivial_rush/screens/purchases/widgets/winner_item_box.dart';

import '../../../core/models/purchases_model/purchases.dart';

/// Created by Nahapet
/// Date: 14.10.22

/// [purchasesContainer] Main container for every player with styles
/// [winnerBox] Special widget only for winner
/// [playerBox] Widget for other players - without `Price` -

Widget purchasesItem(
    {required BuildContext context,
    required AsyncSnapshot snapshot,
    required List<Color> colorList,
    required int index,
    required Purchases item}) {
  //
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 8.0,
      horizontal: 16.0,
    ),

    ///
    child: index == snapshot.data.length - 1

        /// Winner container: Players are sorted by lowest to highest plays, so
        /// the winner box is the last one in the `Purchases` list.
        ? purchasesContainer(
            Stack(
              children: [
                /// Box widget for winner
                winnerBox(
                    context: context,
                    index: index,
                    colorList: colorList,
                    item: item),

                /// badge show or not
                Positioned(
                    top: 1,
                    left: 1,
                    child: snapshot.data[index].show_badge == true
                        ? Image.asset('assets/images/pp_dial.png')
                        : const SizedBox()),
              ],
            ),
          )

        /// Other players container
        : purchasesContainer(
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Box widget for players
                      playerBox(
                          context: context,
                          index: index,
                          colorList: colorList,
                          item: item),

                      /// <Padding> between `main info` and `price`
                      const Expanded(child: SizedBox()),

                      /// price
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

                /// badge show or not
                Positioned(
                    top: 1,
                    left: 1,
                    child: snapshot.data[index].show_badge == true
                        ? Image.asset('assets/images/pp_dial.png')
                        : const SizedBox()),
              ],
            ),
          ),
  );
}
