import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectIndex;
  CustomBottomNavigationBar({Key? key, required this.selectIndex})
      : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var _selectIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectIndex = widget.selectIndex;
  }

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });

    Future(() {
      switch (index) {
        case 0:
          Modular.to.navigate("/");
          return;
        case 1:
          Modular.to.navigate("/estoque");
          return;
        case 2:
          Modular.to.navigate("/usuario");
          return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Vendas",
          activeIcon: Icon(
            Icons.home,
            color: Colors.yellow,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.storage),
          label: "Estoque",
          activeIcon: Icon(
            Icons.storage,
            color: Colors.yellow,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          activeIcon: Icon(
            Icons.person,
            color: Colors.yellow,
          ),
          label: "Usuário",
        )
      ],
      currentIndex: _selectIndex,
      onTap: _onTapItem,
    );
  }
}
