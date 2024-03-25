import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/tips/data/models/get_random_tip_response.dart';
import 'package:icare/src/features/tips/data/repositories/tips_repo.dart';

class GetRandomTipUseCase
    implements BaseUseCase<GetRandomTipResponse, NoParams> {
  final TipsRepo _tipsRepo;

  const GetRandomTipUseCase(this._tipsRepo);

  @override
  Future<ApiResult<GetRandomTipResponse>> call(NoParams params) async {
    return await _tipsRepo.getRandomTip();
  }
}
