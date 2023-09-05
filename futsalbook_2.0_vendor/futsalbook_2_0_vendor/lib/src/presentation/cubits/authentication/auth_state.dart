import 'package:equatable/equatable.dart';

enum AuthStatus { initial, loading, isLogged, isNotLogged }

class AuthState extends Equatable {
  final String? email;
  final String? password;
  final bool isObscure;

  const AuthState({
    required this.email,
    required this.password,
    required this.isObscure,
  });

  factory AuthState.initial() {
    return const AuthState(
      email: null,
      password: null,
      isObscure: true,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [email, password, isObscure];
}
