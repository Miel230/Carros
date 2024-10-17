import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
          _text("Login", "Digite o login"),
          SizedBox(
            height: 10,
          ),
          _text("Senha", "Digite a senha"),
          SizedBox(
            height: 20,
          ),
          _button("Login"),
        ],
      ),
    );
  }

  _button(String text) {
    return Container(
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Background color
        ),
      ),
    );
  }

  _text(String label, String hint) {
    return TextFormField(
      style: TextStyle(fontSize: 25, color: Colors.blue),
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 25, color: Colors.grey),
          hintText: hint,
          hintStyle: TextStyle(fontSize: 16)),
    );
  }
}
