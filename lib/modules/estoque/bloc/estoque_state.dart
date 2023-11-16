part of 'estoque_bloc.dart';

class EstoqueState {
  List<String> produtos;
  EstoqueState(this.produtos);
}

class EstoqueStateIntial extends EstoqueState {
  EstoqueStateIntial() : super([]);
}

class EstoqueStateData extends EstoqueState {
  EstoqueStateData(List<String> produto) : super(produto);
}
