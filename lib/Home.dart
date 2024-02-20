import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final String username;
  final String password;

  Homepage({required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        backgroundColor: Colors.blue.shade300,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Username: $username',
                style: TextStyle(color: Colors.red),
              ),
            ),
            Text('Password: $password', style: TextStyle(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
