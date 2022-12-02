import 'package:flutter/material.dart';

class mensajes extends StatefulWidget {
  const mensajes({super.key});

  @override
  State<mensajes> createState() => _mensajesState();
}

class _mensajesState extends State<mensajes> {

  Stream<QuerySnapshot> resp_consulta = FirebaseFirestore.instance
  .collection("Chat")
  .orderBy("tiempo",descending: true)
  .snapshots();



  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: resp_consulta,
      builder: (context,AsyncSnapshot<QuerySnapshot> respuesta){
        return ListView.builder(
          itemCount: respuesta.data!.docs.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(respuesta.data.docs[index].get("mensaje")),);
          },
        );
      },
    );
  }
}