import 'package:flutter/material.dart';
import 'package:goalify/presentasi/widget/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/signin_signup_background.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset("assets/images/sign_up_illustration.png",
                  width: 350, alignment: Alignment.topCenter),
              const SizedBox(
                height: 48,
              ),
              Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFF615ADB), Color(0xFF343075)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(55),
                              topLeft: Radius.circular(55))),
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(children: <Widget>[
                            const SizedBox(
                              height: 60,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Gabarito',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Center(
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Column(
                                            children: [
                                              Text(
                                                'E-mail',
                                                style: TextStyle(
                                                    fontFamily: 'Gabarito',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              )
                                            ],
                                          ),
                                          const CustomTextField(
                                            hintText: "Enter your E-mail",
                                            icon: Icons.email,
                                          ),
                                          const SizedBox(height: 20),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Column(
                                                  children: [
                                                    Text(
                                                      'Full Name',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Gabarito',
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 12,
                                                    )
                                                  ],
                                                ),
                                                const CustomTextField(
                                                  hintText:
                                                      "Enter your Full Name",
                                                  icon: Icons.person,
                                                  obscureText: true,
                                                ),
                                                const SizedBox(height: 20),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Column(
                                                      children: [
                                                        Text(
                                                          'Password',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Gabarito',
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        SizedBox(
                                                          height: 12,
                                                        )
                                                      ],
                                                    ),
                                                    const CustomTextField(
                                                      hintText:
                                                          "Enter your Password",
                                                      icon: Icons.lock,
                                                      obscureText: true,
                                                    ),
                                                    const SizedBox(height: 45),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        Navigator
                                                            .pushReplacementNamed(
                                                                context,
                                                                'homeScreen');
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        // alignment:
                                                        //     Alignment.center,
                                                        backgroundColor:
                                                            Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 122,
                                                                vertical: 24),
                                                      ),
                                                      child: const Text(
                                                        "Create an Account",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Gabarito',
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Color(0xff625BDB),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const SizedBox(
                                                          height: 50,
                                                        ),
                                                        Text(
                                                          'Already have an account?',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Gabarito',
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.7)),
                                                        ),
                                                        TextButton(
                                                          onPressed: () {
                                                            Navigator
                                                                .pushReplacementNamed(
                                                                    context,
                                                                    'signInScreen');
                                                          },
                                                          child: Text(
                                                            'Sign In',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Gabarito',
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.7),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ])
                                        ])))
                          ]))))
            ])));
  }
}
