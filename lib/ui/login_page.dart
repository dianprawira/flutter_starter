import 'package:flutter/material.dart';
import 'package:flutter_starter/data/api/api_auth.dart';
import 'package:sp_util/sp_util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameCont = TextEditingController();
  final _passwordCont = TextEditingController();

  bool _formState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _formState
          ? loginForm(context)
          : const Center(child: CircularProgressIndicator()),
    );
  }

  Widget loginForm(context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: _usernameCont,
            decoration: const InputDecoration(hintText: 'Username/Email'),
          ),
          TextField(
            controller: _passwordCont,
            obscureText: true,
            decoration: const InputDecoration(hintText: 'Password'),
          ),
          ElevatedButton(
              onPressed: () {
                _doLogin();
              },
              child: const Text('Login'))
        ]),
      ),
    );
  }

  Future _doLogin() async {
    setState(() {
      _formState = false;
    });

    var authku = ApiAuth();
    try {
      await SpUtil.getInstance();
      var user = await authku.login(_usernameCont.text, _passwordCont.text);
      SpUtil.putString('token', user.token.toString());
      SpUtil.putBool('isLogin', true);
      if (!mounted) return;
      Navigator.pop(context);
    } catch (error) {
      _showMyDialog(context, error);
    }
    setState(() {
      _formState = true;
    });
  }

  Future<void> _showMyDialog(context, message) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text('Error'),
              content: Text(message.toString()),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ));
  }
}
