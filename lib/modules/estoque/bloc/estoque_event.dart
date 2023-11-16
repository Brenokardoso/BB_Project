part of 'estoque_bloc.dart';

class EstoqueEvent {}

class EstoqueEventAddItem extends EstoqueEvent {
  String item;
  EstoqueEventAddItem(this.item);
}

class EstoqueEventRemoveItem extends EstoqueEvent {
  String item;
  EstoqueEventRemoveItem(this.item);
}
