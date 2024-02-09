import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color custom = const Color(0xFF771F98);

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                  size: 22,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(0.0, 50.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Transform.translate(
                                offset: const Offset(0.0, -20.0),
                                child: Image.asset(
                                  'lib/assets/login-sit.png',
                                  width: 150,
                                  height: 250,
                                ),
                              ),
                              const SizedBox(height: 0.0),
                              Transform.translate(
                                offset: const Offset(10.0, -160.0),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Hello, Welcome Back',
                                      style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins-bold',
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Happy to see you again, to use your\naccount please login first.',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Poppins-Bold',
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 0),
                              Transform.translate(
                                offset: const Offset(5.0, -125.0),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                      SizedBox(height: 0.0),
                                      TextField(
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 26),
                              Transform.translate(
                                offset: const Offset(5.0, -120.0),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Password',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                      SizedBox(height: 0),
                                      TextField(
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Poppins',
                                        ),
                                        obscureText: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Transform.translate(
                                offset: const Offset(5.0, -100.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Forgot Password?',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Poppins-Bold',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              Transform.translate(
                                offset: const Offset(5.0, -85.0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: custom,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      child: const Center(
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}