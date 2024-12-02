import 'package:auth_app/widgets/input_text.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: const Text(
          "Register",
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
                'Register Here',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            InputText(
              hintText: 'Full Name',
              prefixIcons: Icon(
                Icons.person_outline,
                color: Colors.blue[800],
              ),
              isSuffixEnabled: false,
              isObscure: false,
              controller: fullNameController,
            ),
            InputText(
              hintText: 'Email',
              prefixIcons: Icon(
                Icons.email_outlined,
                color: Colors.blue[800],
              ),
              isSuffixEnabled: false,
              isObscure: false,
              controller: emailController,
            ),
            InputText(
              hintText: 'Password',
              prefixIcons: Icon(
                Icons.key_outlined,
                color: Colors.blue[800],
              ),
              isSuffixEnabled: true,
              isObscure: true,
              controller: passController,
            ),
            InputText(
              hintText: 'Confirm Password',
              prefixIcons: Icon(
                Icons.key_outlined,
                color: Colors.blue[800],
              ),
              isSuffixEnabled: true,
              isObscure: true,
              controller: confirmPassController,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    String fullName = fullNameController.text;
                    String email = emailController.text;
                    String password = passController.text;
                    String confirmPass = confirmPassController.text;

                    print(
                        "RegisterPage: Fullname: $fullName, Email: $email, Password: $password, Confirm Password: $confirmPass");
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                        Color.fromARGB(255, 16, 115, 230)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 85),
                    child: Text(
                      'Sign Up',
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
