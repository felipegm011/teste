
class Projeto{

final int codigo;
final String nome;
final String descricao;
final String gerenteProjetos;
final String dataSP1;
final String dataSP2;
final String dataInicio;
final String dataFim;
final String dataReview;
final DateTime dataRetrospectiva;

  Projeto(this.codigo, this.nome, this.descricao, this.gerenteProjetos, this.dataSP1, this.dataSP2, this.dataInicio, this.dataFim, this.dataReview, this.dataRetrospectiva);
  
  @override
    String toString() {
    return 'Projeto{codigo: $codigo, nome: $nome, descricao: $descricao, gerenteProjetos: $gerenteProjetos, dataSP1: $dataSP1, dataSP2: $dataSP2, dataInicio: $dataInicio, dataFim: $dataFim, dataReview: $dataReview, dataRetrospectiva: $dataRetrospectiva}';
  }  
}