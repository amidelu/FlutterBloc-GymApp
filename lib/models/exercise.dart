import 'dart:convert';

import 'package:equatable/equatable.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Exercise extends Equatable {
  final String? title;
  final int? prelude;
  final int? duration;
  final int? index;
  final int? startTime;

  const Exercise({
    required this.prelude,
    required this.title,
    required this.duration,
    this.index,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'prelude': prelude,
      'duration': duration,
      'index': index,
      'startTime': startTime,
    };
  }

  String toJson() => json.encode(toMap());

  factory Exercise.fromJson(
          Map<String, dynamic> json, int index, int startTime) =>
      Exercise(
        title: json['title'] != null ? json['title'] as String : null,
        prelude: json['prelude'] != null ? json['prelude'] as int : null,
        duration: json['duration'] != null ? json['duration'] as int : null,
        index: index,
        startTime: startTime,
      );

  @override
  String toString() {
    return 'Exercise(title: $title, prelude: $prelude, duration: $duration, index: $index, startTime: $startTime)';
  }

  @override
  List<Object?> get props => [title, prelude, duration, index, startTime];

  @override
  bool get stringify => true;
}
