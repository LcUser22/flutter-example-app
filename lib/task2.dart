import 'package:flutter/material.dart';
import 'package:livecoding/task2/todo_model.dart';
import 'package:livecoding/task2/todo_repo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_field
  Future<List<TodoModel>>? _todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 2'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(), // убрать Spacer и отобразить данные
            Align(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () async {
                  setState(() {
                    _todos = TodoRepo().getTodos();
                  });
                },
                child: const Text('Получить данные'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
