import 'package:flutter/material.dart';
import 'interfaz/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
    apiKey: "AIzaSyCsuPl36nhHQeboPyHNyByx7Jw8zLP7Vtk",
  authDomain: "reto3-chat-fc2dd.firebaseapp.com",
  projectId: "reto3-chat-fc2dd",
  storageBucket: "reto3-chat-fc2dd.appspot.com",
  messagingSenderId: "949684990721",
  appId: "1:949684990721:web:47e12baea715a01c34a100",
  measurementId: "G-WKQ45Y1KYT"));
  runApp(const MyApp());
}


