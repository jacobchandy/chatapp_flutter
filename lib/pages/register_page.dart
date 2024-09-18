import 'package:chatapp_flutter/components/my_button.dart';
import 'package:chatapp_flutter/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confirmcontroller = TextEditingController();

  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            // welcome back message
            const SizedBox(height: 50),

            Text(
              "Let's create an account for you",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // email textfield
            MyTextField(
              hintText: 'Email',
              obscureText: false,
              controller: _emailcontroller,
            ),

            const SizedBox(
              height: 10,
            ),

            // pw textfield
            MyTextField(
              hintText: 'Password',
              obscureText: true,
              controller: _passwordcontroller,
            ),

            const SizedBox(
              height: 10,
            ),

            // confirm password textfield
            MyTextField(
              hintText: 'Confirm Password',
              obscureText: true,
              controller: _confirmcontroller,
            ),

            const SizedBox(
              height: 25,
            ),
            // login button

            MyButton(
              text: 'Register',
              onTap: register,
            ),

            const SizedBox(
              height: 25,
            ),

            // login now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary)),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
