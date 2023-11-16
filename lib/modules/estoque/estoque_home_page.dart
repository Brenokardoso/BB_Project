import 'package:bb_project/modules/estoque/bloc/estoque_bloc.dart';
import 'package:bb_project/widgets/bottom_navigator_bar.dart';
import 'package:bb_project/widgets/formulario_de_estoque.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EstoquePage extends StatefulWidget {
  const EstoquePage({super.key});

  @override
  State<EstoquePage> createState() => _EstoquePageState();
}

class _EstoquePageState extends State<EstoquePage> {
  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<EstoqueBloc>(context).add(EstoqueEventAddItem("Cerveja"));
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Estoque"),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectIndex: 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomCardForm(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            BlocConsumer<EstoqueBloc, EstoqueState>(
              listener: (context, state) {
                print("Alguem Escutou Algo");
              },
              builder: (context, state) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.produtos.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      margin: const EdgeInsets.only(
                        top: 15,
                        left: 15,
                        right: 15,
                      ),
                      child: ListTile(
                        // trailing: const Icon(
                        //   Icons.light_mode_rounded,
                        //   color: Colors.yellow,
                        // ),
                        trailing: Container(
                          color: Colors.red,
                        ),
                        title: Text(
                          state.produtos[index],
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
