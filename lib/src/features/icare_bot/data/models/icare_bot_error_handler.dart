import 'package:icare/src/core/errors/failure.dart';
import 'package:icare/src/core/utils/app_strings.dart';

class ICareBotErrorHandler extends Failure {
  const ICareBotErrorHandler({super.failureMsg});

  factory ICareBotErrorHandler.handleError(String error) {
    if (error == AppStrings.noInternetConnection) {
      return const ICareBotErrorHandler(
        failureMsg: AppStrings.noInternetConnection,
      );
    }
    return ICareBotErrorHandler(failureMsg: error);
  }
}
