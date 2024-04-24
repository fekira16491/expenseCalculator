import 'package:expense_calculator/widgets/button.dart';
import 'package:expense_calculator/widgets/text_editor.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextEditorWidget(
                    controller: _usernameController,
                    placeholderHunt: 'Username'),
                TextEditorWidget(
                  controller: _passwordController,
                  placeholderHunt: 'Password',
                  isPassword: true,
                ),
                SizedBox(height: 20),
                CustomButton(
                  text: "Login",
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () => {},
                )
              ],
            )),
      ),
    );
  }
}
