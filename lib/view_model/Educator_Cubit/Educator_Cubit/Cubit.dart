import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Educator_States/Educator_States.dart';

class Appcubit extends Cubit<Appstates> {

  static Appcubit get(context) => BlocProvider.of<Appcubit>(context);
  Appcubit() :super(Appintialstaes());

  bool isdark=false;
  void ChangeAppMode(){
    isdark=!isdark;
    print(isdark);
emit(AppChangeModeStates());
  }

}