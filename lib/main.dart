import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp1/view_models/product_view_model.dart';
import 'package:tp1/views/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductViewModel(),
      child: MaterialApp(
        title: 'Fake Store App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey[100],
          appBarTheme: const AppBarTheme(elevation: 0),
        ),
        home: const ProductListScreen(),
      ),
    );
  }
}
