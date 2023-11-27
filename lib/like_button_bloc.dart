
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'like_button_event.dart';
part 'like_button_state.dart';

class LikeButtonBloc extends Bloc<LikeButtonEvent, LikeButtonState> {
  LikeButtonBloc() : super(const LikeButtonInitial()) {
    on<LikeButtonEvent>((event, emit) {
      emit(LikeButtonClickedState(state.widget));
    });
  }
}
