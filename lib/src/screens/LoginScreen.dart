import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/src/blocs/bloc.dart';
import 'package:flutter_bloc_pattern/src/blocs/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          emailField(bloc),
          passwordField(bloc),
          submitbutton(),
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.email  ,
        builder:(context , snapshot){
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'you@example.com', labelText: 'Email address',errorText: snapshot.error),
          );
        });
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.password  ,
        builder:(context , snapshot){
          return TextField(
            onChanged: bloc.changePassword,
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'password', labelText: 'password',errorText: snapshot.error),
          );
        });
  }

  Widget submitbutton() {
    return RaisedButton(
      child: Text("Login"),
      color: Colors.blue,
      onPressed: () {},
    );
  }





}
