import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_practice/pages/detail_page.dart';
import 'package:let_practice/pages/home_page.dart';
import 'package:let_practice/pages/welcome_page.dart';

import 'app_cubit.dart';
import 'app_cubit_states.dart';

class AppCubitsLogics extends StatefulWidget {
  const AppCubitsLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitsLogics> createState() => _AppCubitsLogicsState();
}

class _AppCubitsLogicsState extends State<AppCubitsLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // to check on the states
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if(state is  WelcomeState){
            return WelcomePage();
          }
          if(state is LoadingState){
            return Center(
              // draw a circular progress indicator
              child: CircularProgressIndicator(),
            );
          }if(state is LoadedState){
            return HomePage();
          }
          if(state is DetailState){
            return DetailPage();
          }
          else{
            return Container();
          }
        },
      ),
    );
  }
}
