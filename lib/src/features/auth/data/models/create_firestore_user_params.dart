class CreateFirestoreUserParams {
  final String name;
  final String email;
  final String uId;
  final String? password;

  const CreateFirestoreUserParams({
    required this.name,
    required this.email,
    required this.uId,
    this.password,
  });
}
