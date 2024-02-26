class RegisterRequestParams {
  final String? name;
  final String email;
  final String password;

  const RegisterRequestParams({
    this.name,
    required this.email,
    required this.password,
  });
}
