import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          Row(
            children: <Widget>[
              GestureDetector(
                child: Icon(Icons.exit_to_app),
                onTap: () async {
                  await _auth.signOut();
                },
              ),
              SizedBox(width: 5.5,),
              GestureDetector(
                child: Icon(Icons.share),
                onTap: () async {
                  await _auth.signOut();
                },
              ),
              SizedBox(width: 15,),
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Text(
                'Home',
                style: TextStyle(fontSize: 36),
              )),
              RaisedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.exit_to_app),
                  label: Text('Sign Out'))
            ],
          ),
        ),
      ),
    );
  }
}
