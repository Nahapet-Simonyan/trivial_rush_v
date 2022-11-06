// import 'dart:async';
//
// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:meta/meta.dart';
//
// part 'page_controller_event.dart';
// part 'page_controller_state.dart';
//
// class PageControllerBloc extends Bloc<PageControllerEvent, PageControllerState> {
//   PageControllerBloc() : super(PageControllerInitial()) {
//     on<PageControllerEvent>((event, emit) {});
//     on<PageControllerEvent>((NewEvent event, NewInitialState emit) {
//
//       void changePage(index) {
//         page = PageController(initialPage: index);
//         pageIndex = index;
//
//         notifyListeners();
//       }
//     });
//   }
// }
