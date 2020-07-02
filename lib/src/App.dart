import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/src/screens/LoginScreen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log me in ',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
