import 'package:equatable/equatable.dart';
import 'package:let_practice/model/data_model.dart';

abstract class CubitStates extends Equatable{

}
// to pass a state class/function in the first creation of cubit
class InitialState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [
    // data that should be changed and create rebuild of UI

  ];

}
// to trigger a new state
class WelcomeState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

// to trigger a new state
class LoadingState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

// to trigger a new state
class LoadedState extends CubitStates{
  //to catch the data
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  // TODO: implement props
  //to trigger the auto build(update state)
  List<Object?> get props => [places];

}

// to trigger a new state
class DetailState extends CubitStates{
  //to catch the data
  DetailState(this.place);
  final DataModel place;
  @override
  // TODO: implement props
  //to trigger the auto build(update state)
  List<Object?> get props => [place];

}