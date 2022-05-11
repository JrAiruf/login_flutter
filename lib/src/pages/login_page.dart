import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_project_flutter/src/pages/sign_up_page.dart';
import 'package:login_project_flutter/src/widgets/app_initial_screen.dart';
import '../controllers/auth_controller.dart';
import '../widgets/email_text_fields.dart';
import '../widgets/password_text_field.dart';

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
                        const Padding(
                          padding: EdgeInsets.only(top: 55.0),
                          child: InitialPageTexts(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0, bottom: 10),
                          child: EmailTextField(
                            emailController: emailController,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: PasswordTextField(
                              passwordController: passwordController),
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
                              AuthController().login(
                                  emailController.text.trim(),
                                  passwordController.text.trim());
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
