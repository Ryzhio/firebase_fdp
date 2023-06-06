import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/headers/header_text_widget.dart';

class ListClient extends StatefulWidget {
  final String texto;
  final bool isActive;
  final VoidCallback func;
  const ListClient(
      {super.key,
      required this.texto,
      required this.isActive,
      required this.func});

  @override
  State<ListClient> createState() => _ListClientState();
}

class _ListClientState extends State<ListClient> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
          texto: widget.texto,
          context: context,
          isActive: widget.isActive,
          func: widget.func,
        ),
      ],
    );
  }
}

Widget listTiles(
    {required BuildContext context,
    texto = String,
    isActive = bool,
    required VoidCallback func}) {
  return Container(
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black26,
        ),
      ),
    ),
    child: ListTile(
      onTap: func,
      title: headerText(
        texto,
        isActive ? Colors.amber : Colors.black54,
        FontWeight.w300,
        17,
      ),
      trailing: isActive
          ? Icon(
              Icons.check,
              color: isActive ? Colors.amber : Colors.black54,
            )
          : Text(''),
    ),
  );
}
