import 'package:flutter/material.dart';


class PrincipalMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              "O Que Deseja Cadastrar?",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
          ),
          /// Texto a ser exibido para o usuário
          SizedBox(height: 25),
          Row(
            // metodo para centralizar
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                // botão dentro da linha
                RaisedButton(
                  color: Colors.amber,
                  onPressed: (){
                    Navigator.pushNamed(context, 'cadastroUsuario');
                  },
                  child: Text(
                      "Cadastro Usuario", style: TextStyle(color: Colors.white)
                  ),
                ),
                SizedBox(width: 25),
                RaisedButton(
                  color: Colors.tealAccent,
                  onPressed: (){
                      Navigator.pushNamed(context, 'cadastroProjeto');
                  },
                  child: Text(
                      "Cadatro Projeto", style: TextStyle(color: Colors.white)
                  ),
                )
              ]
          )
        ],
      ),
    );
  }
}