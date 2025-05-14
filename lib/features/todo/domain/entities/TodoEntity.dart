import 'package:equatable/equatable.dart';

class TodoEntity extends Equatable {
  final String content;
  final int id;
  final bool isDone;

  const TodoEntity({
    required this.content,
    required this.id,
    required this.isDone,
  });

  @override
  List<Object?> get props => [
        content,
        id,
        isDone,
      ];
}
