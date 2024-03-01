import 'package:icare/src/core/api/api_result.dart';

abstract class BaseUseCase<Type, Params> {
  Future<ApiResult<Type>> call(Params params);
}
