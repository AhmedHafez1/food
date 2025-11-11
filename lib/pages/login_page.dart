import 'package:flutter/material.dart';
import 'package:food_delivery/components/ah_button.dart';
import 'package:food_delivery/components/ah_text_field.dart';
import 'package:food_delivery/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final VoidCallback onSwitchToRegister;

  LoginPage({super.key, required this.onSwitchToRegister});

  void onLoginPressed(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.delivery_dining_rounded,
              size: 120,
              color: Colors.lightBlue,
            ),
            SizedBox(height: 30),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 30),
            AhTextField(controller: usernameController, hintText: 'Email'),
            SizedBox(height: 20),
            AhTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            SizedBox(height: 30),
            AhButton(text: 'Sign In', onTap: () => onLoginPressed(context)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: onSwitchToRegister,
                  child: Text(
                    'Register here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
