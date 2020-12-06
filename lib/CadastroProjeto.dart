import 'package:flutter/material.dart';

import 'Projeto.dart';



class CadastroProjeto extends StatelessWidget{


  final TextEditingController _controladorCodigo = TextEditingController();
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorDescricao = TextEditingController();
  final TextEditingController _controladorgerenteProjetos = TextEditingController();
  final TextEditingController _controladordataSP1 = TextEditingController();
  final TextEditingController _controladordataSP2 = TextEditingController();
  final TextEditingController _controladordataInicio = TextEditingController();
  final TextEditingController _controladordataFim = TextEditingController();
  final TextEditingController _controladordataReview = TextEditingController();
  final TextEditingController _controladordataRetrospectiva = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(  
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Cadastrando Projeto'),
        ),
        body: ListView(
          children: <Widget>[
              
              TextField(
              controller: _controladorCodigo,
              decoration: InputDecoration(labelText: 'Código do projeto'),
              keyboardType: TextInputType.number,
              ),
            
            //TextField( controller: _controladorNome,),
            TextField(
              controller: _controladorNome,
              decoration: InputDecoration(labelText: 'Nome do Projeto'),
              keyboardType: TextInputType.text,
              ),
            TextField(
              controller: _controladorDescricao,
              decoration: InputDecoration(labelText: 'Descrição do Projeto'),
              keyboardType: TextInputType.text,
              ),
            TextField(
              controller: _controladorgerenteProjetos,
              decoration: InputDecoration(labelText: 'Gerente do Projeto'),
              keyboardType: TextInputType.text,
              ),
           TextField(
              controller: _controladordataSP1,
              decoration: InputDecoration(labelText: 'Data SP1'),
              keyboardType: TextInputType.text,
              ),
            TextField(
              controller: _controladordataSP2,
              decoration: InputDecoration(labelText: 'Data SP2'),
              keyboardType: TextInputType.text,
              ),
            TextField(
              controller: _controladordataInicio,
              decoration: InputDecoration(labelText: 'Data Inicio'),
              keyboardType: TextInputType.text,
              ),
            TextField(
              controller: _controladordataFim,
              decoration: InputDecoration(labelText: 'Data Fim'),
              keyboardType: TextInputType.text,
              ),
            TextField(
              controller: _controladordataReview,
              decoration: InputDecoration(labelText: 'Data Review'),
              keyboardType: TextInputType.text,
              ),
            TextField(
              controller: _controladordataRetrospectiva,
              decoration: InputDecoration(labelText: 'Data Retrospectiva'),
              keyboardType: TextInputType.datetime,
              ),
              
          

            RaisedButton(
              child: Text('Cadastrar'),
              onPressed: () {
                final int codigo = int.tryParse(_controladorCodigo.text);
                final String nome = _controladorNome.text;
                //final int quantidade = int.tryParse(_controladorNome.text);
                //final double valor = double.tryParse(_controladorValor.text);
                final String descricao = _controladorDescricao.text;
                final String gerente = _controladorgerenteProjetos.text;
                final String data1 = _controladordataSP1.text;
                final String data2 = _controladordataSP2.text;
                final String dtinicio = _controladordataInicio.text;
                final String dtfim = _controladordataFim.text;
                final String dtreview = _controladordataReview.text;
                final DateTime dtretrospectiva = DateTime.tryParse(_controladordataRetrospectiva.text);

                final Projeto projetoNovo = Projeto(codigo, nome, descricao, gerente, data1, data2, dtinicio, dtfim, dtreview, dtretrospectiva);
                print(projetoNovo);

                },
              ),
            
          ],
        ),
      ),
    );
  }
}