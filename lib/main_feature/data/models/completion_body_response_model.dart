import 'package:freezed_annotation/freezed_annotation.dart';

part 'completion_body_request_model.g.dart';

@JsonSerializable()
class CompletionsResponseModel {
  final String? id;
  final String object;
  final int? created;
  final String? model;
  final List<dynamic>? choices;
  final Map<String, dynamic>? usage;
  final int? promptTokens;
  final int? completionTokens;
  final int? totalTokens;
  final String? firstCompletion;

  const CompletionsResponseModel({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
    required this.firstCompletion,
  });
}
