import 'package:open_ai_copy_cat/main_feature/data/models/completion_body_request_model.dart';
import 'package:open_ai_copy_cat/main_feature/data/models/completion_body_response_model.dart';
import 'package:open_ai_copy_cat/main_feature/domain/entities/question_body.dart';
import 'package:open_ai_copy_cat/main_feature/domain/entities/response_body.dart';

abstract class CompletionBodyMapper {
  CompletionBodyRequestModel bodyRequestToModel(QuestionBody entity) {
    return CompletionBodyRequestModel(
      model: "text-curie-001",
      prompt: entity.prompt,
      maxTokens: 6,
      temperature: 0,
      topP: 1,
      n: 1,
    );
  }

  ResponseBody responseModelToEntity(CompletionsResponseModel model) {
    return ResponseBody(
      model.choices?.first["text"] ?? "Error generating response",
    );
  }
}
