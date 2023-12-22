import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: const Text('Receitas',
        style: TextStyle(color: Colors.white, fontSize: 28),),
      ),
      body: const Center(
        child: Text('Receitas por Categoria'),
      ),
    );
  }
}