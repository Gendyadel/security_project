import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:security_project/providers/algorithm_provider.dart';
import 'package:security_project/src/constants.dart';
import 'package:security_project/views/main_screen.dart';

class AppRoot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AlgorithmsProvider>
          (create:(_)=>AlgorithmsProvider()),
      ],
      child: MaterialApp(
        title: 'Cypher',
        home: MainScreen(),
      ),
    );
  }
}
