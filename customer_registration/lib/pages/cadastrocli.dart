import 'package:flutter/material.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class CadastroCli extends StatefulWidget {
  const CadastroCli({super.key});

  @override
  
  State<CadastroCli> createState() => _CadastrCliState();
}

  class _CadastrCliState extends State<CadastroCli>{

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final idController = TextEditingController();
  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final cpfController = TextEditingController();
  final cepController = TextEditingController();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cadastrar cliente",
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
                      'Cliente',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                          fontSize: 25.0,
                        ),
                    ),


        //----- Campo da Label do ID ------//
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
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Preencher ID';
                    }
                    return null;
                  },
                ), 
              ), 



        //----- Campo da Label Usuario ------//
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 7.0),
                      child: TextFormField(
                        controller: nomeController,
                        decoration: const InputDecoration(
                          labelText: 'Nome',
                          hintText: 'Informe o nome',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person)
                        ),
                      ),
                    ),


            //----- Campo da Label  E-mail -------//        
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 7.0),
                      child: TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: 'E-mail',
                          hintText: 'Informe o e-mail',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email)
                        ),
                        validator: (email){
                          if(Validator.email(email)){
                            return 'Preencher @ ';
                          }
                            return null;
                        },
                      ),
                    ),


          //------- Campo da Label CPF ------//
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 7.0),
                      child: TextFormField(
                        controller: cpfController,
                        decoration: const InputDecoration(
                            labelText: 'CPF',
                            hintText: 'Informe o cpf',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.badge)
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          MaskTextInputFormatter(
                            mask: '###.###.###-##',
                            type: MaskAutoCompletionType.lazy)
                        ],
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return 'Prencher CPF';
                          }
                          return null;
                        },
                      ),
                    ),

            //------- Campo da Label CEP ---------//        
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 7.0),
                      child: TextFormField(
                        controller: cepController,
                        decoration: const InputDecoration(
                            labelText: 'CEP',
                            hintText: 'Informe o cep',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.pin_drop)
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          MaskTextInputFormatter(
                            mask: '#####-###',
                            type: MaskAutoCompletionType.lazy)
                        ],
                        validator: (cep) {
                          if(Validator.cep(cep)){
                            return 'Preencher cep';
                          }
                          return null;
                        },
                      ),
                    ),


            //------ Botao do CADASTRO ------//
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed:(){
                          
                        } ,
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
 
  // ignore: prefer_typing_uninitialized_variables
 

  
