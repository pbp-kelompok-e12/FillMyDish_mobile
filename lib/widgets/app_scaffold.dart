import 'package:flutter/material.dart';
import '../screens/home_page.dart';
import '../screens/saved_recipe_page.dart';
import '../screens/meal_plan_page.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  final List<String> _pages = [
    'Home',
    'Find Recipe',
    'Saved Recipe',
    'Meal Plan',
    'Review',
    'Profile',
  ];

  int _selectedIndex = 0;

  void _openPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_selectedIndex])),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text('FillMyDish')),
            for (int i = 0; i < _pages.length; i++)
              ListTile(
                title: Text(_pages[i]),
                selected: i == _selectedIndex,
                onTap: () {
                  Navigator.of(context).pop(); // Tutup drawer.
                  _openPage(i);
                },
              ),
          ],
        ),
      ),
        body: _selectedIndex == 0
            ? HomePage(onFindRecipe: () => _openPage(1))
            : _selectedIndex == 2
            ? const SavedRecipePage()
            : _selectedIndex == 3
            ?const MealPlanPage()
            : Center(
                child: Text('Halaman ${_pages[_selectedIndex]} masih sementara.'),
            ),
    );
  }
}