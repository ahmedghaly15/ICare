abstract class MyUseCase<Type, Params> {
  Future<Type> call(Params params);
}
