import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({super.key});

  final TextEditingController emailController = TextEditingController();

  get onSubmitted => print("onSub");// ele funciona clicando o enter do teclado, usado muito para web

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  hintText: 'exemplo@exemplo.com',
                  border: OutlineInputBorder(),
                  suffixText: '.com',
                ),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
                onChanged: onChanged,
                onSubmitted: onSubmitted,
              ),
              ElevatedButton(
                onPressed: login,
                child: Text('Entrar'),
              )
            ],

          ),
        ),
      ),
    );
  }

  void login() {
    String email = '${emailController.text.toString()}.com';
    print(email);
    emailController.clear();
  }

  void onChanged(String text) {
    print(text);

  }
}
