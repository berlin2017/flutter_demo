import 'package:flutter/material.dart';

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/': (context) => SignUpScreen()},
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Center(
            child: Text('Berlin'),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(100),
          child: SizedBox(
            child: SignForm(),
          ),
        ));
  }
}

class SignForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUpFormState();
}

class SignUpFormState extends State<SignForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sign Up',
            style: Theme.of(context).textTheme.headline4,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(hintText: 'UserName'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(hintText: 'UserName'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: MaterialButton(
              onPressed: null,
              child: Text("SignUp"),
            ),
          )
        ],
      ),
    );
  }
}
