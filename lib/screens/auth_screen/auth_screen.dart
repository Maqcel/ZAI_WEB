import 'package:flutter/material.dart';
import 'package:zai/config/exceptions/exceptions.dart';
import 'package:zai/config/injection/injection.dart';
import 'package:zai/cubits/log_in_cubit/log_in_cubit.dart';
import 'package:zai/models/email_model/email.dart';
import 'package:zai/models/password_model/password.dart';

import '../../values/constants.dart';
import 'components/login_button.dart';
import 'components/sign_up_button.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final LogInCubit _logInCubit = LogInCubit(getIt.get());

  bool isLogin = true;

  void changeForm() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.usedPrimaryColor,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Constants.usedDrawerColor,
            borderRadius: BorderRadius.circular(
              Constants.usedRadius,
            ),
          ),
          height: Constants.usedAuthScreenWebHeightParameter,
          width: Constants.usedAuthScreenWebWidthParameter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.person,
                size: Constants.usedFieldIconSize,
                color: Constants.usedPrimaryColor,
              ),
              SizedBox(
                height: Constants.usedDefaultPadding,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (!Email(value!).isValid()) {
                      return AuthException.invalidEmailFormat().getString();
                    }
                    _logInCubit.emailChange(value);
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Constants.usedFieldContentPadding),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (!Password(value!).isValid()) {
                      return AuthException.invalidPasswordFormat().getString();
                    }
                    _logInCubit.passwordChange(value);
                    return null;
                  },
                ),
              ),
              isLogin ? LogInButton(_logInCubit) : SignUpButton(),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Constants.usedAccentColor),
                ),
                onPressed: changeForm,
                child: Text(
                  isLogin ? 'Change to Signup' : 'Change to Login',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
