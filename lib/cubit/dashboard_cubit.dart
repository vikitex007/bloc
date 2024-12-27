import 'package:first_flutter_apps/cubit/student_details_cubit.dart';
import 'package:first_flutter_apps/view/student_details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view/arithmetic_cubit_view.dart';
import '../view/counter_cubit_view.dart';
import 'arithmentic_cubit.dart';
import 'counter_cubit.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(this._counterCubit,
      this._arithmeticCubit,
      this._studentCubit,) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentDetailsCubit _studentCubit;


  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            BlocProvider.value(
              value: _counterCubit,
              child: const CounterCubitView(),
            ),
      ),
    );
  }

  void openArithmeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            BlocProvider.value(
              value: _arithmeticCubit,
              child: const ArithmeticCubitView(),
            ),
      ),
    );
  }

  void openStudentView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            BlocProvider.value(
              value: _studentCubit,
              child: const StudentDetailsView(),
            ),
      ),
    );
  }
}

