import 'package:flutter/material.dart';
import 'package:proj_login/controller/user_controller.dart';
import 'package:proj_login/userInterface/widgets/myAppBar.dart';

class Login extends StatelessWidget {
  Login({super.key});
  //criamos o objeto controller
  UserController userController = UserController();
  final nomeController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(texto: 'Login'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: nomeController,
              decoration: const InputDecoration(
                  hintText: 'Usuário', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: 'Senha', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: () {
                  userController.login(context, nomeController.text, passwordController.text);
                },
                child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}