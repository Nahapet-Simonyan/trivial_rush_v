import 'package:flutter/material.dart';
import '../../../core/models/purchases_model/purchases.dart';

/// Created by Nahapet
/// Date: 14.10.22

/// Create widget for players in `Purchases` list page - without price -

Widget playerBox(
    {required BuildContext context,
    required int index,
    required List colorList,
    required Purchases item}) {
  //
  return Row(
    children: [
      /// colored container for plays count
      Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          color: colorList[index % colorList.length],
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),

        /// container with special border, with info about plays count
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
              /// plays count
              Text(
                '${item.plays_count}',
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'AmericanTypeWriter',
                ),
              ),

              /// text
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

      /// <<Padding>> between `colored container` and `main info`
      const SizedBox(
        width: 20,
      ),

      /// main info
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// title
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

          /// subtitle
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

      /// Here not price part.
      /// You can find price part in `purchasesItem` widget
    ],
  );
}
