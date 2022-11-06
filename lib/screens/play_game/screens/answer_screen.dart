import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivial_rush/screens/play_game/builders/answer_list_builder.dart';
import 'package:trivial_rush/screens/play_game/widgets/question_text.dart';
import '../../../core/models/quiz_model/quiz.dart';
import '../models/only_one_pointer_recognizer.dart';
import '../providers/quiz_provider.dart';
import '../widgets/quiz_app_bar.dart';
import '../widgets/score_page.dart';

Widget answerScreen(
    {required BuildContext context,
    required AsyncSnapshot<List<Quiz>> snapshot}) {
  PageController quizPageController = PageController(initialPage: 0);

  var data = snapshot.data;

  return PageView.builder(
    controller: quizPageController,
    reverse: false,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (BuildContext context, int index) {
      var provider = context.read<QuizProvider>();

      /// When restart the game, all colors changes to default colors
      provider.defaultColor();

      if (index < snapshot.data!.length) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// AppBar
              quizAppBar(quizPageController, context, snapshot, index),

              /// Quiz
              SizedBox(
                height: MediaQuery.of(context).size.height - 137,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      /// Question
                      questionText(snapshot, index),

                      /// Image
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 46, right: 46),
                        child: data![index].question_image_url != null
                            ? Image.network('${data[index].question_image_url}')
                            : const SizedBox(),
                      ),

                      /// Answers
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: OnlyOnePointerRecognizerWidget(
                          /// Widget list builder
                          child: answersListBuilder(
                              data: data,
                              index: index,
                              snapshot: snapshot,
                              provider: provider,
                              quizPageController: quizPageController),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      } else {
        /// Last/Score Page
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color.fromRGBO(0, 153, 0, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// Score
              score(provider: provider),

              /// Go To HomePage Button
              scorePageGoToHomePageButton(context: context, provider: provider),
            ],
          ),
        );
      }
    },
  );
}
