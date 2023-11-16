import 'package:bb_project/widgets/bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

class VendasPage extends StatefulWidget {
  const VendasPage({super.key});

  @override
  State<VendasPage> createState() => _VendasPageState();
}

class _VendasPageState extends State<VendasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Vendas"),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectIndex: 0),
      body: const Center(
        child: Text(
          "PÁGINA P/ VENDAS",
          style: TextStyle(fontSize: 43),
        ),
      ),
    );
  }
}
