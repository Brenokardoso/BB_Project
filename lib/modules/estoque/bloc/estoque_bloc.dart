import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "estoque_event.dart";
part "estoque_state.dart";

class EstoqueBloc extends Bloc<EstoqueEvent, EstoqueState> {
  EstoqueBloc() : super(EstoqueStateIntial()) {
    on<EstoqueEventAddItem>(_addItemOnList);
    on<EstoqueEventRemoveItem>(_removeItemOnList);
  }

  _addItemOnList(EstoqueEventAddItem event, Emitter emit) {
    List<String> listaNova = state.produtos;
    listaNova.add(event.item);
    emit(EstoqueStateData(listaNova));
  }

  _removeItemOnList(EstoqueEventRemoveItem event, Emitter emit) {
    List<String> listaNova = state.produtos;
    listaNova.remove(event.item);
    emit(EstoqueStateData(listaNova));
  }
}
