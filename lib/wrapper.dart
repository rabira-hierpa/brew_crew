import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/screens/authentication/auth.dart';
import 'package:brew_crew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    // Return either home or auth widget
    return user == null ? Authenticate() : Home();
  }
}