import 'dart:math';
import 'package:belajar/bloc/user_bloc.dart';
import 'package:belajar/model/user.dart';
import 'package:belajar/ui/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("MVVM Architecture"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("Pick Random User"),
            color: Colors.blueGrey,
            onPressed: () {
              bloc.dispatch(random.nextInt(10)+1);
            },
          ),
          BlocBuilder<UserBloc, User>(builder: (context, user) => (user is UninitializedUser) ? Container() : UserCard(user)),
        ],
      ),
    );
  }
}