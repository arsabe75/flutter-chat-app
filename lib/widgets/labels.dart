import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String texto;
  final String textoBtn;

  const Labels({
    Key? key,
    required this.ruta,
    required this.texto,
    required this.textoBtn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this.texto,
          style: TextStyle(
              color: Colors.black54,
              fontSize: 15.0,
              fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 10.0),
        GestureDetector(
          child: Text(
            this.textoBtn,
            style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, this.ruta);
          },
        )
      ],
    );
  }
}
