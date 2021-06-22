import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zai/config/exceptions/exceptions.dart';
import 'package:zai/cubits/signup_cubit/sign_up_cubit.dart';
import 'package:zai/screens/home_screen/home_screen.dart';

class SignUpButton extends StatefulWidget {
  final SignUpCubit _signUpCubit;

  const SignUpButton(this._signUpCubit);
  @override
  _SignUpButtonState createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  void _signUpPressed() {
    widget._signUpCubit.signUp();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      bloc: widget._signUpCubit,
      builder: (context, state) {
        return state.isLoading
            ? CircularProgressIndicator()
            : Container(
                child: TextButton(
                  onPressed: () {
                    widget._signUpCubit.emailChange(state.email.value);
                    widget._signUpCubit.passwordChange(state.password.value);
                    widget._signUpCubit.nameChange(state.firstName);
                    _signUpPressed();
                  },
                  child: Text("SIGN UP"),
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
          widget._signUpCubit.clearExceptionDialog();
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
