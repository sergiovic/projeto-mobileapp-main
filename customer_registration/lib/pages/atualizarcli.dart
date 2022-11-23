import 'package:flutter/material.dart';

class AtualizarCli extends StatelessWidget {
  AtualizarCli({super.key});

  final idController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final cpfController = TextEditingController();
  final cepController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Editar cliente",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset('/images/loginEscuro.png',
                      height: 100,
                      width: 120,
                    ),
                    const SizedBox(height: 0),
                    const Text(
                      'Editar Cliente',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black26,
                          fontSize: 25.0,
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        controller: idController,
                        decoration: const InputDecoration(
                          labelText: 'ID',
                          hintText: 'Informe o ID',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.pin)
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: 'Nome',
                          hintText: 'Informe o nome',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person)
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: 'E-mail',
                          hintText: 'Informe o e-mail',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email)
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        controller: cpfController,
                        decoration: const InputDecoration(
                            labelText: 'CPF',
                            hintText: 'Informe o cpf',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.badge)
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        controller: cepController,
                        decoration: const InputDecoration(
                            labelText: 'CEP',
                            hintText: 'Informe o cep',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.pin_drop)
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 5),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: (){},
                        child: const Text('Atualizar',
                        style: TextStyle(fontSize: 25)),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
