import 'package:bloc/bloc.dart';

import 'package:futsalbook_2_0_vendor/src/presentation/cubits/authentication/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());
}
