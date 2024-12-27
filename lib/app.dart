import 'package:first_flutter_apps/cubit/arithmentic_cubit.dart';
import 'package:first_flutter_apps/cubit/counter_cubit.dart';
import 'package:first_flutter_apps/cubit/dashboard_cubit.dart';
import 'package:first_flutter_apps/cubit/student_details_cubit.dart';
import 'package:first_flutter_apps/view/arithmetic_cubit_view.dart';
import 'package:first_flutter_apps/view/counter_cubit_view.dart';
import 'package:first_flutter_apps/view/dashboard_cubit_view.dart';
import 'package:first_flutter_apps/view/student_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context)=> CounterCubit()),
      BlocProvider(create: (context)=> ArithmeticCubit()),
      BlocProvider(create: (context)=> StudentDetailsCubit()),
      BlocProvider(create: (context) => DashboardCubit(
        context.read<CounterCubit>(),
        context.read<ArithmeticCubit>(),
        context.read<StudentDetailsCubit>(),

      ),),

    ], child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter bloc',
      home: DashboardView(),

    ),
    );
  }
}
