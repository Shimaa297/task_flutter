import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/cubit/cubit_app.dart';
import 'package:task_flutter/cubit/cubit_states.dart';
import 'package:task_flutter/screens/home_page.dart';
import 'package:task_flutter/sharedPreferences/dio_helper.dart';

import 'constants/theme_style.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> AppCubit()..getHomeData(),
      child: BlocConsumer<AppCubit, CubitStates>(
        listener: (context, state){},
        builder: (context, state)
        {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeDataLight,
           // home: const HomeScreen(),
           home:  HomePage(),
          );
        },
      ),
    );
  }
}
