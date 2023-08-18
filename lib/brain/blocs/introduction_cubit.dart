import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'introduction_state.dart';

class IntroductionCubit extends Cubit<IntroductionState> {
  IntroductionCubit() : super(IntroductionInitial());

  static IntroductionCubit get(context) => BlocProvider.of(context);




}
