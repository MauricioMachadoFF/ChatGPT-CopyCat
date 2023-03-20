import 'package:equatable/equatable.dart';

class QuestionBody extends Equatable {
  final String prompt;

  const QuestionBody(this.prompt);

  @override
  List get props => [prompt];
}
