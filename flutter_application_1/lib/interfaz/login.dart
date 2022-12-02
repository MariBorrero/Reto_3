import 'package:flutter/material.dart';
import 'package:flutter_application_1/proceso/autenticacion.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final email = TextEditingController();
final password = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login / Registro"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Email",
                suffixIcon: Icon(Icons.email)
              ),),

            TextField(
              obscureText: true,
              controller: password,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: Icon(Icons.key)
              ),),

            Divider(),

            ElevatedButton.icon(
              onPressed: () {
                Autenticacion().IniciarSesion(
                  email: email.text,
                  password: password.text);
                          

              },
              icon: Icon(Icons.login),
              label: Text("Iniciar sesion")
            ),

            Divider(),

            ElevatedButton.icon(
              onPressed: () {
                Autenticacion().CrearUsuario(
                  email: email.text,
                  password: password.text);
              },
              icon: Icon(Icons.login),
              label: Text("Registrar Usuario")
            )

     ]
    ),
      ),);
  }
}