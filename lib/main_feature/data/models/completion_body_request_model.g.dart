// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_body_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletionBodyRequestModel _$CompletionBodyRequestModelFromJson(
        Map<String, dynamic> json) =>
    CompletionBodyRequestModel(
      model: json['model'] as String,
      prompt: json['prompt'] as String,
      maxTokens: json['maxTokens'] as int,
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: json['topP'] as int?,
      n: json['n'] as int?,
      stream: json['stream'] as bool?,
      longprobs: json['longprobs'] as int?,
      stop: json['stop'] as String?,
    );

Map<String, dynamic> _$CompletionBodyRequestModelToJson(
        CompletionBodyRequestModel instance) =>
    <String, dynamic>{
      'model': instance.model,
      'prompt': instance.prompt,
      'maxTokens': instance.maxTokens,
      'temperature': instance.temperature,
      'topP': instance.topP,
      'n': instance.n,
      'stream': instance.stream,
      'longprobs': instance.longprobs,
      'stop': instance.stop,
    };
