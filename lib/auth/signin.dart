import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sogra/auth/signup.dart';
import 'package:sogra/screen/home_screen_bread.dart';

import '../common/NoAnimation.dart';
import '../common/constant.dart';
import '../common/logo.dart';
import '../common/password_field.dart';
import '../common/text_form_field.dart';
import '../common/title.dart';
import '../main.dart';
import '../provider/firebase_provider.dart';

class SignIn extends StatelessWidget {

  String userEmail = '';
  String userPassword = '';

  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const MyLogo(size: 90),
              const SizedBox(
                height: 10,
              ),
              const MyTitle(fontSize: 50),
              const SizedBox(
                height: 40,
              ),
              MyTextFormField(
                onSaved: (value) {
                  userEmail = value!;
                },
                onChanged: (value) {
                  userEmail = value!;
                },
                content: "이메일",
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              PasswordField(onSaved: (value) {
                userPassword = value!;
              }, onChanged: (value) {
                userPassword = value!;
              }),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Constant.COLOR,
                    ),
                    onPressed: () async {
                      bool logging = await context.read<FirebaseProvider>().signIn(userEmail, userPassword);
                      if (logging) {
                        Navigator.pushAndRemoveUntil(context, NoAnimationRouteBuilder(builder: (context) => HomeScreenBread()), (route) => false);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text("이메일과 비밀번호를 확인하세요."),
                        backgroundColor: Colors.yellow,));
                      }
                    },
                    child: const Text("로그인",
                        style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Constant.COLOR,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            NoAnimationRouteBuilder(
                                builder: (context) => SignUp()));
                      },
                      child: const Text(
                        "회원가입",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
