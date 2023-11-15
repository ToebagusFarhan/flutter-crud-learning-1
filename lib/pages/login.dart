import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();

  final _username = 'admin';
  final _password = 'admin';

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.pink])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formkey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Enter Username',
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.person, color: Colors.white),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukan Username!';
                          } else if (value != _username) {
                            return 'Username Salah!';
                          } else if (value == _username) {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                          style: const TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(Icons.person, color: Colors.white),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Masukan Password!';
                            } else if (value != _password) {
                              return 'Password Salah!';
                            } else if (value == _password) {
                              return null;
                            }
                          }),
                      const SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.pushReplacementNamed(context, '/home');
                          }
                        },
                        child: const Text('LOGIN'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
