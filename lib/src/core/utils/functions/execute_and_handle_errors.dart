import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';

Future<ApiResult<T>> executeAndHandleErrors<T>(
    Future Function() function) async {
  try {
    return await function();
  } catch (error) {
    return ApiResult.error(ErrorHandler.handle(error));
  }
}
