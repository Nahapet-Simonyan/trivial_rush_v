import 'package:flutter/material.dart';

Widget leaderboardItem(context, snapshot, colorList, index, item) {
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
          Text(
            '${index + 1}.',
            style: const TextStyle(
              color: Color.fromRGBO(74, 74, 74, 1),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),

          // Circle Avatar

          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(64),
              ),
              color: colorList[index % colorList.length],
              // -- dynamic background color
            ),
            child: item?.user_image_url == null

                // if has image => show image

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

                // if not has image => show first letter of name

                : Center(
                    child: CircleAvatar(
                      radius: 64,
                      backgroundImage: NetworkImage('${item?.user_image_url}'),
                    ),
                  ),
          ),
          const SizedBox(
            width: 30.0,
          ),
          Text(
            '${item?.first_name}',
            style: const TextStyle(
              color: Color.fromRGBO(74, 74, 74, 1),
              fontFamily: 'AmericanTypeWriter',
              fontSize: 18,
            ),
          ),
          const Expanded(child: SizedBox()),
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
