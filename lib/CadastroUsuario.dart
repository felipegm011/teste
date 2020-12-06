import 'package:flutter/material.dart';

import 'Usuario.dart';



class CadastroUsuario extends StatelessWidget{


  final TextEditingController _controladorUsername = TextEditingController();
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorSobrenome = TextEditingController();
  final TextEditingController _controladorData = TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Cadastrando Usuário'),
        ),
        body: ListView(
          children: <Widget>[
             Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
              controller: _controladorUsername,
              decoration: InputDecoration(labelText: 'UserName'),
              keyboardType: TextInputType.text,
              ),
            ),
            //TextField( controller: _controladorNome,),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
              controller: _controladorNome,
              decoration: InputDecoration(labelText: 'Nome'),
              keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
              controller: _controladorSobrenome,
              decoration: InputDecoration(labelText: 'Sobrenome'),
              keyboardType: TextInputType.text,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
              controller: _controladorData,
              decoration: InputDecoration(labelText: 'Data'),
              keyboardType: TextInputType.text,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
              controller: _controladorEmail,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.text,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
              controller: _controladorSenha,
              decoration: InputDecoration(labelText: 'Senha'),
              keyboardType: TextInputType.number,
              ),
            ),

            RaisedButton(
              child: Text('Cadastrar'),
              onPressed: () {
                final String username = _controladorUsername.text;
                final String nome = _controladorNome.text;
                //final int quantidade = int.tryParse(_controladorNome.text);
                //final double valor = double.tryParse(_controladorValor.text);
                final String sobrenome = _controladorSobrenome.text;
                final String data = _controladorData.text;
                final String email = _controladorEmail.text;
                final int senha = int.tryParse(_controladorSenha.text);

                final Usuario produtoNovo = Usuario(username, nome, sobrenome, data, email, senha);
                print(produtoNovo);
              },
            )
          ],
        ),
      ),
    );
  }
}