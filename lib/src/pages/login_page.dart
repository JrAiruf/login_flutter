import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_project_flutter/src/pages/sign_up_page.dart';

import '../controllers/auth_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    );

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Hello',
                          style: TextStyle(
                              fontSize: 65, fontWeight: FontWeight.w700),
                        ),
                        const Text(
                          'Sign into your account',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        TextField(
                          controller: emailController,
                          style: const TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              hintText: 'Your e-mail',
                              hintStyle: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 20.0),
                          child: TextField(
                            controller: passwordController,
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Your password',
                                hintStyle: const TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                prefixIcon: const Icon(
                                  Icons.key,
                                  color: Colors.white,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 65),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(),
                              ),
                              const Text(
                                'Forgot your password?',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(180, 65),
                              primary: Colors.purple,
                              shape: shape,
                            ),
                            onPressed: () {
                              AuthController().login(emailController.text.trim(), passwordController.text.trim());
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 65.0,
                        ),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: " Create",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Get.to(
                                          () => const SignUpPage(),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
