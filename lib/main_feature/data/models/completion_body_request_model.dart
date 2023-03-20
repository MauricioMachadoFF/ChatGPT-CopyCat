import 'package:freezed_annotation/freezed_annotation.dart';

part 'completion_body_request_model.g.dart';

@JsonSerializable()
class CompletionBodyRequestModel {
  final String model;
  final String prompt;
  final int maxTokens;
  final double? temperature;
  final int? topP;
  final int? n;
  final bool? stream;
  final int? longprobs;
  final String? stop;

  CompletionBodyRequestModel({
    required this.model,
    required this.prompt,
    required this.maxTokens,
    required this.temperature,
    this.topP,
    this.n,
    this.stream,
    this.longprobs,
    this.stop,
  });
}
