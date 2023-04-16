import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //Reference the box
  final _myBox = Hive.box('mybox');

  //Method for the first time ever opening the app
  void createInitialData() {
    toDoList = [
      ["Create my first task",false],
    ];
  }

  //Load data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //Update database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}