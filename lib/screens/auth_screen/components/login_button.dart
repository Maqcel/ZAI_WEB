import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zai/config/exceptions/exceptions.dart';
import 'package:zai/cubits/log_in_cubit/log_in_cubit.dart';
import 'package:zai/screens/home_screen/home_screen.dart';

class LogInButton extends StatefulWidget {
  final LogInCubit _logInCubit;

  const LogInButton(this._logInCubit);
  @override
  _LogInButtonState createState() => _LogInButtonState();
}

class _LogInButtonState extends State<LogInButton> {
  void _loginPressed() {
    widget._logInCubit.logIn();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LogInState>(
      bloc: widget._logInCubit,
      builder: (context, state) {
        return state.isLoading
            ? CircularProgressIndicator()
            : Container(
                child: TextButton(
                  onPressed: () {
                    widget._logInCubit.emailChange(state.email.value);
                    widget._logInCubit.passwordChange(state.password.value);
                    _loginPressed();
                  },
                  child: Text("LOG IN"),
                ),
              );
      },
      listener: (context, state) {
        if (state.dialogException != const ValueIsValid.valueIsValid()) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Error"),
                content: Text(state.dialogException.getString()),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          );
          widget._logInCubit.clearExceptionDialog();
        }
        if (state.isSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => HomeScreen(),
            ),
          );
        }
      },
    );
  }
}
