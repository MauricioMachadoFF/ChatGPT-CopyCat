import 'package:equatable/equatable.dart';

class ResponseBody extends Equatable {
  final String message;

  const ResponseBody(this.message);

  @override
  List get props => [message];
}
