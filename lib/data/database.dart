import 'package:hive_flutter/hive_flutter.dart';


class ToDoDatabase{
  List toDoList = [];

  final _myBox = Hive.box('myBox');

  void createInitialData() {
    toDoList  = [
      ['Finish Home Work', false],
      ['Make Tutorial', false],
    ];
  }
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}