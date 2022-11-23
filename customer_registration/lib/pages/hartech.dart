import 'package:flutter/material.dart';

class Hartech extends StatefulWidget {
  const Hartech({super.key});

  @override
  State<Hartech> createState() => _HartechState();
}

class _HartechState extends State<Hartech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sucesso sobre Cadastro'),
      ),
    );
  }
}