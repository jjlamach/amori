import 'package:flutter/material.dart';

class ForgottenPasswordPage extends StatelessWidget {
  const ForgottenPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Forgotten Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Provide an email and we will send you a link to reset your password.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email field required.";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  height: 46,
                  child: OutlinedButton(
                    onPressed: () {
                      final form = formKey.currentState?.validate();
                    },
                    child: const Text(
                      'Reset password',
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Go back'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
