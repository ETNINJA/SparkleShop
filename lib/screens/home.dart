import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () => print('menu button'),
        ),
        title: const Text('Sparkle'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () => print('search button'),
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () => print('filter button'),
          ),
        ],
      ),
      body: Center(
        child: const Text('Welcome to Sparkle'),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
