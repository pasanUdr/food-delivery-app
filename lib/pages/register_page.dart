import 'package:flutter/material.dart';
import 'package:test/components/my_button.dart';
import 'package:test/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  //text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 15,
            ),
            //message, app slogan
            Text(
              "Let's create an account for you",
              style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 15,
            ),
            //email txt feild
            MyTextfield(
                controller: emailController,
                hintText: "Email",
                obscureText: false),
            const SizedBox(
              height: 15,
            ),
            //password txt feild
            MyTextfield(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),
            const SizedBox(
              height: 15,
            ),
            //confirm password txt feild
            MyTextfield(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                obscureText: true),
            const SizedBox(
              height: 15,
            ),
            //sign up btn
            MyButton(onTap: () {}, text: "Sign Up"),
            const SizedBox(
              height: 15,
            ),
            //not a member? reg now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
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