import 'package:brew_crew/screens/authentication/auth.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Return either home or auth widget
    return Authenticate();
  }
}