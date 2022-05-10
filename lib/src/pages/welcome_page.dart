import 'package:flutter/material.dart';
import 'package:login_project_flutter/src/controllers/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(top: 75, bottom: 65),
                            child: CircleAvatar(
                              backgroundColor: Colors.purple,
                              radius: 60.0,
                            ),
                          ),
                          const Text(
                            'Welcome',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                           Text(
                            email,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(180, 65),
                                primary: Colors.purple,
                                shape: shape,
                              ),
                              onPressed: () {
                                AuthController().logOut();
                              },
                              child: const Text(
                                'Sign Out',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
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
