import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/weather_bloc.dart';
import 'package:bloc_app/cubit/weather_cubit.dart';
import 'package:bloc_app/data/weather_repository.dart';
import 'package:bloc_app/pages/weather_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (context) => WeatherBloc(FakeWeatherRepository()),
        child: WeatherSearchPage(),
      ),
    );
  }
}
