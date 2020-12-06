import 'package:AppPedidos/CadastroUsuario.dart';
import 'package:flutter/material.dart';

import 'CadastroProjeto.dart';
import 'PrincipalMain.dart';
void main() {
  runApp(Rotas());
}

class Rotas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          // rota inicial quando abre
          initialRoute: 'principal',
          // esquema de rotas
          routes: {
            // rota 'kudos' definidos no arqui Kudos
            'principal': (context) => PrincipalMain(),
            'cadastroUsuario': (context) => CadastroUsuario(),
            'cadastroProjeto': (context) => CadastroProjeto(),
          }
        );
  }
}
