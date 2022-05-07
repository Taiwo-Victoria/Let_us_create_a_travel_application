import 'package:bloc/bloc.dart';
import 'package:let_practice/cubit/app_cubit_states.dart';
import 'package:let_practice/model/data_model.dart';
import 'package:let_practice/services/data_services.dart';
class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}) : super(InitialState()){
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void getData() async {
    try{
      emit(LoadingState());
      //load d variable and all info from d server
      places = await data.getInfo();
      emit(LoadedState(places));

    }catch(e){

    }
  }
  
  detailPage(DataModel data){
    emit(DetailState(data));
  }
  
  goHome(){
    emit(LoadedState(places));
  }
}