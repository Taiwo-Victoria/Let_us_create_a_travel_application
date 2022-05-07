import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_practice/cubit/app_cubit.dart';
import 'package:let_practice/cubit/app_cubit_logics.dart';
import 'package:let_practice/navpages/main_page.dart';
import 'package:let_practice/pages/detail_page.dart';
import 'package:let_practice/pages/welcome_page.dart';
import 'package:let_practice/services/data_services.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        //create the cubit and hold it so as to be accessed
        home: BlocProvider<AppCubits>(
          create: (context) => AppCubits(data: DataServices(),),
          // a child that can hold/ access all the cubits
          child: AppCubitsLogics(),
        ),
    );
  }
}
