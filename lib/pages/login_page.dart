import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Text('Login',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text("Let's get started",
                      style: TextStyle(color: Colors.white70)),
                  const SizedBox(height: 40),

                  // Email
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Forgot Password?",
                          style: TextStyle(color: Colors.lightBlueAccent)),
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[700],
                      minimumSize: const Size(double.infinity, 48),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/theater');
                    },
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 16),
                  const Text("Or",
                      style: TextStyle(color: Colors.white70, fontSize: 14)),
                  const SizedBox(height: 16),

                  // Google Login
                  OutlinedButton.icon(
                    icon: const Icon(Icons.g_mobiledata, size: 28),
                    label: const Text('Login With Google'),
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white70),
                        foregroundColor: Colors.white),
                  ),
                  const SizedBox(height: 12),

                  // Facebook Login
                  OutlinedButton.icon(
                    icon: const Icon(Icons.facebook, size: 28),
                    label: const Text('Login With Facebook'),
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white70),
                        foregroundColor: Colors.white),
                  ),

                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text("Don't have an account? Register here",
                        style: TextStyle(color: Colors.lightBlueAccent)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
