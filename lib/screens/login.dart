import 'package:flutter/material.dart';
import 'package:session9/screens/screens.dart';

import '../widgets/widgets.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController emailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://plus.unsplash.com/premium_photo-1681487814165-018814e29155?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bG9naW58ZW58MHx8MHx8fDA%3D',
              height: 200,
            ),
            CustomTextField(hint: 'Email', fieldController: emailCont),
            CustomTextField(
              hint: 'Password',
              isPassword: true,
              fieldController: passCont,
            ),
            ElevatedButton(
              onPressed: () => _login(context),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  _login(BuildContext context) {
    var email = emailCont.text;
    var password = passCont.text;
    emailCont.clear();
    passCont.clear();
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Enter valid Credentials')));
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    }
  }
}
