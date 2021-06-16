import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zai/config/exceptions/exceptions.dart';
import 'package:zai/models/email_model/email.dart';
import 'package:zai/models/password_model/password.dart';
import 'package:zai/repositories/auth_repository.dart';

part 'log_in_state.dart';
part 'log_in_cubit.freezed.dart';

class LogInCubit extends Cubit<LogInState> {
  final AuthRepository _authRepository;

  LogInCubit(this._authRepository) : super(LogInState.init());

  Future<void> logIn() async {
    if (state.emailException != const ValueIsValid.valueIsValid()) {
      return emit(state.copyWith(dialogException: state.emailException));
    }
    if (state.passwordException != const ValueIsValid.valueIsValid()) {
      return emit(state.copyWith(dialogException: state.passwordException));
    }
    emit(state.copyWith(isLoading: true));
    final signInState = await _authRepository.logIn(
      email: state.email.value.trimRight(),
      password: state.password.value,
    );
    signInState.fold(
      (fail) => emit(
        state.copyWith(
          dialogException: fail,
          isLoading: false,
          isSuccess: false,
        ),
      ),
      (success) {
        emit(state.copyWith(isSuccess: true, isLoading: false));
      },
    );
  }

  void emailChange(String value) {
    emit(state.copyWith(email: Email(value.toLowerCase())));
  }

  void passwordChange(String value) {
    emit(state.copyWith(password: Password(value)));
  }

  void clearExceptionDialog() {
    emit(state.copyWith(dialogException: const ValueIsValid.valueIsValid()));
  }

  void validateEmail() {
    emit(state.copyWith(
      emailException: !state.email.isValid()
          ? const AuthException.invalidEmailFormat()
          : const ValueIsValid.valueIsValid(),
    ));
  }

  void validatePassword() {
    emit(state.copyWith(
      passwordException: !state.password.isValid()
          ? const AuthException.invalidPasswordFormat()
          : const ValueIsValid.valueIsValid(),
    ));
  }
}
