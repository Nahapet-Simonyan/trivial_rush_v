import 'package:flutter/material.dart';
import '../../../core/models/purchases_model/purchases.dart';

/// Created by Nahapet
/// Date: 14.10.22

/// Create widget only for Winner in `Purchases` list page

Widget winnerBox(
    {required BuildContext context,
    required int index,
    required List colorList,
    required Purchases item}) {
  //
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        /// Winner main container
        Container(
          width: 84.75,
          height: 84.75,
          decoration: BoxDecoration(
            color: colorList[index % colorList.length],
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),

          /// container for color box with border and margin
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
                /// title: plays count
                Text(
                  '${item.plays_count}',
                  style: const TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: 'AmericanTypeWriter',
                  ),
                ),

                /// subtitle: text
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

        /// <<Padding>> between colored `plays count box` and `Main info`
        const SizedBox(
          width: 20,
        ),

        /// Main info
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3.1,
              height: 30,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                /// text
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

            /// price
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
