import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var _selectedIndex = 0;

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Modular.to.navigate("/");
        return;
      case 1:
        Modular.to.navigate("/storage");
        return;
      case 2:
        Modular.to.navigate("/cadastro");
        return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Início",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.storage),
          label: "Estoque",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.lock_rounded),
          label: "Cadastro de Itens",
        )
      ],
      currentIndex: _selectedIndex,
      onTap: _onTapItem,
    );
  }
}
