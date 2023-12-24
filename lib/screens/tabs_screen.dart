import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  final List<Map<String, Object>> _screens = [
    {'title': 'Lista de Categorias', 'Screen': const CategoriesScreen()},
    {'title': 'Meus Favoritos', 'Screen': const FavoriteScreen()},
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(_screens[_selectedScreenIndex]['title'] as String,
            style: const TextStyle(color: Colors.white, fontSize: 28)),
      ),
      body: _screens[_selectedScreenIndex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedScreenIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: ('Categorias'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: ('Favoritos'),
          ),
        ],
      ),
    );
  }
}
