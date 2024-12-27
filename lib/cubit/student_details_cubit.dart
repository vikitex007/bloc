import 'package:flutter_bloc/flutter_bloc.dart';

class StudentDetailsCubit extends Cubit<String>{

  StudentDetailsCubit(): super("no student added yet ");

  void addStd(name,age,address){
    emit("name:$name age: $age address:$address");
  }

  void delStd(){
    emit(" ");
  }








}