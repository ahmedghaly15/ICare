abstract class BaseUseCases<Type, Params> {
  Future<Type> call(Params params);
}
