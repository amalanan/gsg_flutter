import 'package:flutter/material.dart';
import '../routes.dart';
import '../widgets/widgets.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();
  TextEditingController confirmPasswordCont = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SignUp')),
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.network(
                  'https://plus.unsplash.com/premium_photo-1681487814165-018814e29155?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bG9naW58ZW58MHx8MHx8fDA%3D',
                  height: 200,
                ),
                CustomTextField(
                  hint: 'Name',
                  fieldController: nameController,
                  validate: (name) {
                    return name!.length >= 3 ? null : 'Enter Valid Name';
                  },
                ),
                CustomTextField(
                  hint: 'Email',
                  fieldController: emailCont,
                  validate: (email) {
                    if (!email!.contains('@')) return 'Email must contain @';
                    if (!email.contains('.')) return 'Email must contain .';
                    return null;
                  },
                ),
                CustomTextField(
                  hint: 'password',
                  isPassword: true,
                  fieldController: passwordCont,
                  validate: (password) {
                    if (password!.length >= 8) return null;
                    return 'Weak Password';
                  },
                ),
                CustomTextField(
                  hint: 'confirm password',
                  isPassword: true,
                  fieldController: confirmPasswordCont,
                  validate: (confirmPassword) {
                    if (confirmPassword == passwordCont.text &&
                        confirmPassword!.isNotEmpty) {
                      return null;
                    }
                    return 'Password must match';
                  },
                ),
                CustomTextField(
                  hint: 'phone number',
                  isPassword: true,
                  fieldController: phoneController,
                  validate: (phone) {
                    if (phone!.startsWith('01')) return null;
                    return 'Enter Valid Phone Number';
                  },
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.login);
                  },
                  child: Text('Already have an account??'),
                ),
                ElevatedButton(
                  onPressed: () => _signup(context),
                  child: Text('SignUp'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _signup(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, Routes.home,
      arguments: nameController.text,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Enter Valid Credentials'),
          duration: Duration(milliseconds: 500),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
