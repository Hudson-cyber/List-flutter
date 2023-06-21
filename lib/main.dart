import 'package:flutter/material.dart';
import 'package:todo_list/pages/todo_list_page.dart';

void main(){
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: TodoListPage(),
    );
  }
}