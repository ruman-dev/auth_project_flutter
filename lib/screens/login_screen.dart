import 'package:flutter/material.dart';
import 'package:auth_app/widgets/input_text.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailControllerLogin = TextEditingController();
  final TextEditingController passControllerLogin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: const Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[600],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: const Text(
                'Login Here',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            InputText(
              hintText: 'Email',
              prefixIcons: Icon(
                Icons.email_outlined,
                color: Colors.blue[800],
              ),
              isSuffixEnabled: false,
              isObscure: false,
              controller: emailControllerLogin,
            ),
            InputText(
              hintText: 'Password',
              prefixIcons: Icon(
                Icons.key_outlined,
                color: Colors.blue[800],
              ),
              isSuffixEnabled: true,
              isObscure: true,
              controller: passControllerLogin,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    String emailLogin = emailControllerLogin.text;
                    String passwordLogin = passControllerLogin.text;

                    print(
                        "LoginPage: Email: $emailLogin, Password: $passwordLogin");
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                        Color.fromARGB(255, 16, 115, 230)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 85),
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
