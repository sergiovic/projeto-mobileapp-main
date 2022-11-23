import 'package:flutter/material.dart';

class DeletarCli extends StatelessWidget {
  DeletarCli({super.key});

  final idController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Deletar cliente",
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
                      height: 120,
                      width: 120,
                    ),
                    const SizedBox(height: 0),
                    const Text(
                      'Deletar cliente',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black38,
                        fontSize: 25.0,
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top:10.0),
                      child: TextFormField(
                        controller: idController,
                        decoration: const InputDecoration(
                          labelText: 'ID',
                          hintText: 'Informe o id',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.pin)
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50)
                        ),
                        onPressed: (){},
                        child: const Text('Deletar',
                        style: TextStyle(fontSize: 26)),
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
