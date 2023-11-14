// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_local_variable, unused_element, prefer_const_literals_to_create_immutables

import 'package:bb_project/widgets/bottom_navigator_bar.dart';
import 'package:bb_project/widgets/card_for_itens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Black Bird")),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Container(
        margin: EdgeInsets.symmetric(),
        color: Colors.white,
      ),
    );
  }
}
