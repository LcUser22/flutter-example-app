// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:livecoding/task2/todo_model.dart';

class TodoRepo {
  final Dio _dio = Dio();

  /*
    Данные, которые приходят с API:
    [
      {
        "userId": 1,
        "id": 1,
        "title": "delectus aut autem",
          "completed": false
      },
      {
        "userId": 1,
        "id": 2,
        "title": "quis ut nam facilis et officia qui",
        "completed": false
      },
      ...
    ]
  */
  Future<List<TodoModel>> getTodos() async {
    try {
      final response = await _dio.get('https://jsonplaceholder.typicode.com/todos');

      if (response.statusCode == 200) {
        List<dynamic> jsonList = response.data;

        return [];
      } else {
        throw Exception('Ошибка загрузки данных: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Ошибка при запросе: $e');
      return [];
    }
  }
}
