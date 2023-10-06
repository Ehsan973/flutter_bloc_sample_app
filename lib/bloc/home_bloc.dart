import 'dart:math';

import 'package:bloc_sample_app/bloc/home_event.dart';
import 'package:bloc_sample_app/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(ColorInit(Color(0xffff00ff))) {
    on<ChangeColorEvent>((event, emit) {
      emit(ColorRepaint(Color(Random().nextInt(0xffffffff))));
    });
  }
}
