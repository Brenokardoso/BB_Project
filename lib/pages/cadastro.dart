import 'package:bb_project/widgets/bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Black Bird Cadastro")),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}
