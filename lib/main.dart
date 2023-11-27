
import 'package:bloc_tutorial/counter_bloc.dart';
import 'package:bloc_tutorial/like_button_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home.dart';

void main(){
  runApp(MultiBlocProvider(
    providers: [
       BlocProvider(create: (context) => CounterBloc()),
      BlocProvider(create: (context)=> LikeButtonBloc()),
    ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
