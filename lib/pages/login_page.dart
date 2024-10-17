import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          _text("Login", "Digite o login", controller: _tLogin),
          SizedBox(
            height: 10,
          ),
          _text("Senha", "Digite a senha", controller: _tSenha),
          SizedBox(
            height: 20,
          ),
          _button("Login", _onClickLogin),
        ],
      ),
    );
  }

  _text(String label, String hint, {TextEditingController? controller}) {
    return TextFormField(
      controller: controller,
      style: TextStyle(fontSize: 25, color: Colors.blue),
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 25, color: Colors.grey),
          hintText: hint,
          hintStyle: TextStyle(fontSize: 16)),
    );
  }

  _button(String text, Function onPressed) {
    return Container(
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Background color
        ),
      ),
    );
  }

  void _onClickLogin() {
    String login = _tLogin.text;
    String senha = _tSenha.text;

    print("Login: $login, Senha: $senha");
  }
}
