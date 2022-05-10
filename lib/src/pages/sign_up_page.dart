import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/auth_controller.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    List images = [
      'img.png',
      'img1.png',
      'img2.jpg',
    ];

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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 55.0,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 60.0,
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
                              AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 55, bottom: 25),
                          child: RichText(
                            text: TextSpan(
                              text: "Have an account?",
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 20,
                              ),
                              children: [
                                  TextSpan(
                                  text: " Login",
                                  style:const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Get.back(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 65.0, bottom: 20),
                          child: Center(
                            child: Text(
                              'Sign up using on the following method',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                        ),
                        Wrap(
                          children: List<Widget>.generate(
                            3,
                            (index) => Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                    "assets/" + images[index],
                                  ),
                                ),
                              ),
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
