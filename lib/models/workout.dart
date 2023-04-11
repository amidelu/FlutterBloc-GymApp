// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc_app_complete/models/exercise.dart';

class Workout {
  final String? title;
  final List<Exercise> exercises;

  Workout({
    required this.title,
    required this.exercises,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    List<Exercise> exercises = [];
    int index = 0;
    int startTime = 0;

    for (var ex in (json['exercises'] as Iterable)) {
      exercises.add(Exercise.fromJson(ex, index, startTime));
      index++;
      startTime += exercises.last.prelude! + exercises.last.duration!;
    }

    return Workout(title: json['title'], exercises: exercises);
  }

  Map<String, dynamic> toJson() => {'title': title, 'exercises': exercises};
}
