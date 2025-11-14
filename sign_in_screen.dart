import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'reset_password_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Логотип
                Image.asset('assets/flutter_logo.png', height: 100),
                const SizedBox(height: 40),

                // Поле Email
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email:',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Поле Password
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password:',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 25),

                // Кнопка Login
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => const AlertDialog(
                        title: Text('Message'),
                        content: Text('Need to implement login'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text('Login'),
                ),

                const SizedBox(height: 10),

                // Нижні кнопки
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      child: const Text('Sign up'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const ResetPasswordScreen(),
                          ),
                        );
                      },
                      child: const Text('Reset password'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
