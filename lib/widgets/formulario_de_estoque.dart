import 'package:bb_project/modules/estoque/bloc/estoque_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCardForm extends StatefulWidget {
  const CustomCardForm({super.key});

  @override
  State<CustomCardForm> createState() => _CustomCardFormState();
}

class _CustomCardFormState extends State<CustomCardForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _produtoController = TextEditingController();

  void addItem(String item) {
    BlocProvider.of<EstoqueBloc>(context).add(EstoqueEventAddItem(item));
  }

  @override
  void dispose() {
    _produtoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
        height: MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const SizedBox(height: 0),
            TextFormField(
              controller: _produtoController,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  label: Text(
                    "Digite o produto a ser cadastrado",
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
              style: const TextStyle(color: Colors.black),
              validator: (value) => (value == null || value.isEmpty)
                  ? "Não há texto digitado"
                  : null,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            ElevatedButton(
              onPressed: () {
                formKey.currentState!.save();
                addItem(_produtoController.text);
                _produtoController.clear();
              },
              child: const Text("Enviar"),
            ),
          ],
        ),
      ),
    );
  }
}
