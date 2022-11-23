import 'package:customer_registration/pages/cadastrousu.dart';
import 'package:customer_registration/pages/home.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
     const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
} 

class _LoginState extends State<Login> {

  
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [    
              Form(
              key:_formKey,
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


     //---------Campo do da label do Usuario-------------//
              Container(
                width: 300,
                margin: const EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: userController,

                  decoration: const InputDecoration(
                    labelText: 'Usuario',
                    hintText: 'Informe o usuario',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person) 
                  ),
                ), 
              ),


      // --------Campo da Label da Senha----------------//
              Container(
                width: 300,
                margin: const EdgeInsets.only(top: 10.0),    
                child: TextFormField(
                  obscureText: true,                  
                  controller: passwordController,

                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    hintText: 'Informe a senha',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.key),
                  ),
                ),
              ),


          //----------Botão do Entrar-------------// 
              Container(
                width: 300,
                margin: const EdgeInsets.only(top:10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const 
                    Size.fromHeight(50),
                  ),
                    onPressed: (){
                      _formKey.currentState?.validate();

                    },
                    child: const Text('Entrar',
                    style: TextStyle(fontSize: 26)),
                ),
              ),


     //---------- leva para cadastro Usuario -----------//
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Não tem Conta?',
                    style: TextStyle(color: Colors.black87, fontSize: 20)),
                    TextButton(
                      child: const Text('Cadastro',
                      style: TextStyle(color: Colors.blue, fontSize: 20)),
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const CadastroUsu()));
                      },
                    ),
                  ]
                ),
              ),
            ]
        )),
            
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.grey[700]),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaPrincipal()),
                  );
                },
                child: const Text(
                  "Página principal (deletar esse botão depois da finalização do app)",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

