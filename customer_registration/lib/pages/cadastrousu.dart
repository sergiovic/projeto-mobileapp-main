import 'package:customer_registration/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';


class CadastroUsu extends StatefulWidget {
  const CadastroUsu({super.key});

  @override
  State<CadastroUsu> createState()=> _CadastroUsuState();
}

  class _CadastroUsuState extends State<CadastroUsu>{

  final idController = TextEditingController();
  final emailController = TextEditingController();
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cadastrar usuário",
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
                    Image.asset('/images/o-circuito.png',
                      height: 120,
                      width: 120,
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'HARTECH',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black26,
                           fontSize: 25.0,
                          ),
                    ),

             //--------- Campo da Label do ID------//

                  Container(
                width: 300,
                margin: const EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: idController,
                  decoration: const InputDecoration(
                    labelText: 'ID',
                    hintText: 'Informe o  id usuario',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person_outline) 
                  ),
                ), 
              ), 

             //------- Campo da Label Usuario ---------//
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 10.0),
                      child: TextFormField(
                        controller: userController,
                        decoration: const InputDecoration(
                          labelText: 'Usuário',
                          hintText: 'Informe o usuario',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person)
                        ),
                      ),
                    ),


            //------- Campo da Label E-mail---------//
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 10.0),
                      child: TextFormField(
                      controller: emailController,
                        decoration: const InputDecoration(
                          labelText: 'E-mail',
                          hintText: 'Informe o E-mail',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email)
                        ),
                        validator: (value) {
                          if(Validator.email(value)){
                             return 'Preencher Campo';
                            }
                              return null;
                          },
                        ),
                    ),


          //--------- Campo da Label Senha -----------//          
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                            labelText: 'Senha',
                            hintText: 'Informe a senha',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.key)
                        ),
                      ),
                    ),

                    
          //---------- Botão do CADASTRO ------//          
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: (){
                          Navigator.pushAndRemoveUntil(context, 
                            MaterialPageRoute(builder: (_) => Login()),
                            (Route<dynamic>route)=> false);
                          if(_formKey.currentState!.validate()){
                          }
                        },
                        child: const Text('Cadastrar',
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
