import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _tLogin = TextEditingController(text: "miguel");
  final _tSenha = TextEditingController(text: "123");

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
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            _text("Login", "Digite o login", controller: _tLogin, validator: _validateLogin),
            SizedBox(
              height: 10,
            ),
            _text("Senha", "Digite a senha", controller: _tSenha, validator: _validateSenha),
            SizedBox(
              height: 20,
            ),
            _button("Login", _onClickLogin),
          ],
        ),
      ),
    );
  }

  _text(
    String label,
    String hint, {
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
  }) {
    return TextFormField(
      controller: controller,
      validator: validator,
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
    if (! _formKey.currentState!.validate()) {
      return;
    }

    String login = _tLogin.text;
    String senha = _tSenha.text;

    print("Login: $login, Senha: $senha");
  }

  String? _validateLogin(String? text) {
        (String? text) {
          if (text == null || text.isEmpty) {
            return "Digite o login";
          }
          return null;
        };
  }

  String? _validateSenha(String? text) {
        (String? text) {
      if (text == null || text.isEmpty) {
        return "Digite a senha";
      }
      if(text.length < 3) {
        return "A senha precisa ter pelo menos 3 números";
      }
      return null;
    };
  }
}
