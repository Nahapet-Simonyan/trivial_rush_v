import 'package:flutter/material.dart';
import '../../../../core/models/purchases_model/purchases.dart';

Widget winnerBox(
    {required BuildContext context,
    required int index,
    required List colorList,
    required Purchases item}) {
  return Padding(
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
                  '${item.plays_count}',
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
  );
}
