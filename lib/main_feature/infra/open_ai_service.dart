import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:open_ai_copy_cat/main_feature/data/models/completion_body_request_model.dart';
import 'package:open_ai_copy_cat/main_feature/data/models/completion_body_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'open_ai_service.g.dart';

@module
@RestApi()
abstract class OpenAiService {
  @injectable
  factory OpenAiService(
    Dio dio, {
    String baseUrl,
  }) = _OpenAiService;

  @POST("/completions")
  Future<CompletionsResponseModel> createCompletion({
    @Body() required CompletionBodyRequestModel model,
  });
}
