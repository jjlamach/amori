import 'package:amori/common/assets.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(25.0),
          children: [
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1,
              ),
              child: Image.asset(
                Assets.logo2,
                width: 189,
                height: 184,
                fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10.0),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account yet?",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      TextSpan(
                        text: ' Register',
                        style: TextStyle(
                          color: Color.fromRGBO(131, 165, 255, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: 337,
                  height: 46,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text(
                        "Email",
                      ),
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: 337,
                  height: 46,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text(
                        "Password",
                      ),
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Forgotten Password?"),
                  ),
                ),
                const SizedBox(height: 5.0),
                SizedBox(
                  width: 337,
                  height: 46,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Sign in"),
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
