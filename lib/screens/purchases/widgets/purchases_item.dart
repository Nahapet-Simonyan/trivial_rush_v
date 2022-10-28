import 'package:flutter/material.dart';
import 'package:trivial_rush/screens/purchases/widgets/purchases_container.dart';
import 'package:trivial_rush/screens/purchases/widgets/players_item_box.dart';
import 'package:trivial_rush/screens/purchases/widgets/winner_item_box.dart';


Widget purchasesItem(context, snapshot, colorList, index, item) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 8.0,
      horizontal: 16.0,
    ),
    child: index == snapshot?.data.length - 1
        ? purchasesContainer(
            Stack(
              children: [
                winnerBox(
                    context: context,
                    index: index,
                    colorList: colorList,
                    item: item),
                Positioned(
                    top: 1,
                    left: 1,
                    child: snapshot?.data[index].show_badge == true
                        ? Image.asset('assets/images/pp_dial.png')
                        : const SizedBox()),
              ],
            ),
          )
        : purchasesContainer(
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      playerBox(
                          context: context,
                          index: index,
                          colorList: colorList,
                          item: item),
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
