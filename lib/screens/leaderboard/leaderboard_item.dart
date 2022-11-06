import 'package:flutter/material.dart';
import '../../core/models/leaderboard_model/leaderboard.dart';

/// Created by Nahapet
/// Date: 14.10.22

/// [colorList] leaderboardColorList from global constants -> colors_list
/// [index] index of current member
/// [item] current member

Widget leaderboardItem(
    {required BuildContext context,
    required AsyncSnapshot<List<Leaderboard>> snapshot,
    required List<Color> colorList,
    required int index,
    Leaderboard? item}) {
  //
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
    child: Container(
      width: 70,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
        ),
        color:
            index == 0 ? const Color.fromRGBO(255, 224, 204, 1) : Colors.white,
      ),
      child: Row(
        children: [
          /// Number of `index`
          Text(
            '${index + 1}.',
            style: const TextStyle(
              color: Color.fromRGBO(74, 74, 74, 1),
              fontSize: 24,
            ),
          ),

          /// <<Padding>> between (Number of `index`) and `avatar`
          const SizedBox(
            width: 10.0,
          ),

          /// `avatar`: Circle Avatar
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(64),
              ),

              /// -- dynamic background color
              color: colorList[index % colorList.length],
            ),

            /// if has image => show image
            /// if not has image => show first letter of name
            child: item?.user_image_url == null
                ? Center(
                    child: Text(
                      '${item?.first_name?[0].toUpperCase()}',
                      style: const TextStyle(
                        fontFamily: 'AmericanTypeWriter',
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Center(
                    child: CircleAvatar(
                      radius: 64,
                      backgroundImage: NetworkImage('${item?.user_image_url}'),
                    ),
                  ),
          ),

          /// <<Padding>> between `avatar` and `name`
          const SizedBox(
            width: 30.0,
          ),

          /// Name text
          Text(
            '${item?.first_name}',
            style: const TextStyle(
              color: Color.fromRGBO(74, 74, 74, 1),
              fontFamily: 'AmericanTypeWriter',
              fontSize: 18,
            ),
          ),

          /// Expanded <<Padding>> between `name` and `score`
          const Expanded(child: SizedBox()),

          /// Score text
          Text(
            '${item?.score}',
            style: const TextStyle(
              color: Color.fromRGBO(74, 74, 74, 1),
              fontFamily: 'AmericanTypeWriter',
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}
