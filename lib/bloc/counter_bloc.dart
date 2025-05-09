import 'package:flutter_bloc/flutter_bloc.dart';

sealed class CounterEvent{}

final class CounterIncremented extends CounterEvent{}

final class CounterDecrement extends CounterEvent{}

class CounterBloc extends Bloc<CounterEvent,int> {
  CounterBloc() : super(0){
   on<CounterIncremented>((event, emit) {
     emit(state +1);
   },);
   on<CounterDecrement>((event, emit) {
     if(state > 0)emit(state -1);
   },);
  }
}