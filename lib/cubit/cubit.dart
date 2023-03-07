import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/state.dart';

class CounterCubit extends Cubit<CounterState>
{
  CounterCubit():super(counterAState());
  int teamAPoints=0;
  int teamBPoints=0;
  void TeamIncreament({required String team,required int bottomNum})
  {
    if(team=='A')
      {
        teamAPoints+=bottomNum;
        emit(counterAState());
      }else
      {
        teamBPoints+=bottomNum;
        emit(counterBState());
      }
  }
  void Reset()
  {
    teamAPoints=0;
    teamBPoints=0;
    emit(counterDeletState());
  }
}