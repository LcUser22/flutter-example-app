// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:io';

import 'package:livecoding/task2/todo_model.dart';

class TodoRepo {
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
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos');
    var response = await HttpClient().getUrl(url);
    var responseBody = await response.close();
    var data = await responseBody.transform(utf8.decoder).join();

    return [];
  }
}
