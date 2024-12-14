import 'package:flutter/material.dart';

import 'package:travel_buddy_app/pages/auth_pages/login_pages.dart';
import 'package:travel_buddy_app/pages/auth_pages/register_page.dart';


class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
// initially show login page
  bool showLoginPage = true;

  //toogle between login and rester page

  void tooglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
     if(showLoginPage){
      return LogInPage(
        onTap: tooglePages,
      );
     } else {
      return RegisterPage(
        onTap: tooglePages,
      );
     }
  }
}