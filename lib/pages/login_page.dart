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
          Text("Login"),
          TextFormField(),
          SizedBox(height: 10,),
          Text("Senha"),
          TextFormField(
            obscureText: true,
          ),
          SizedBox(height: 20,),
          Container(
            child: ElevatedButton(
                child: Text("Login",
             style: TextStyle(color: Colors.white, fontSize: 25),),
                onPressed: () {
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Background color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
