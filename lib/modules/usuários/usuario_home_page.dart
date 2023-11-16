import 'package:bb_project/widgets/bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

class UsuarioPage extends StatefulWidget {
  const UsuarioPage({super.key});

  @override
  State<UsuarioPage> createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Usuario"),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectIndex: 2),
      body: const Center(
        child: Text(
          "PÁGINA P/ USUÁRIOS",
          style: TextStyle(fontSize: 43),
        ),
      ),
    );
  }
}
