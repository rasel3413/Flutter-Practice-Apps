import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorInitial()) {
    on<ColorChange>(colorChange);
  }

  FutureOr<void> colorChange(ColorChange event, Emitter<ColorState> emit) {
    if (state.color == Colors.black) {
      emit(ColorUpdate(Colors.red));
    } else {
      emit(ColorUpdate(Colors.black));
    }
  }
}
