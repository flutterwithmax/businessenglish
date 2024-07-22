import 'package:flutter/material.dart';
import 'package:newbusinessapp/providers/test_complete.dart';
import 'package:newbusinessapp/screens/quiz_screen.dart';
import 'package:newbusinessapp/screens/search_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestScreen extends ConsumerStatefulWidget {
  const TestScreen({super.key});

  @override
  ConsumerState<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends ConsumerState<TestScreen> {
  @override
  Widget build(BuildContext context) {
    final quizCompletion = ref.watch(quizCompletionProvider);
    return ListView.builder(
        padding: const EdgeInsets.all(2),
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          final quizId = 'quiz${index + 1}';
          final isCompleted = quizCompletion[quizId] ?? false;
          return Card(
            elevation: 2,
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      QuizScreen(topic: dummyData[index], index: index),
                ));
              },
              title: Text(dummyData[index].name.toString()),
              trailing: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: Colors.blue,
                    )),
                alignment: Alignment.center,
                width: 50,
                height: 50,
                child: Text(isCompleted ? '100%' : '0%'),
              ),
            ),
          );
        });
  }
}
