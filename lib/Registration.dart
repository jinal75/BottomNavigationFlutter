import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home:Registration()));

class Registration extends StatefulWidget {
  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<Registration> {
  // TRUE: register page, FALSE: login page
  bool _register = true;

  void _changeScreen() {
    setState(() {
      // sets it to the opposite of the current screen
      _register = !_register;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
//      height:,
        child: Column(
//      mainAxisAlignment: MainAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonBar(
                    children: <Widget>[
                      MaterialButton(
                        onPressed: _changeScreen,
                        child: Text('REGISTER'),
                      ),
                      MaterialButton(

                        onPressed: _changeScreen,
                        child: Text('LOGIN'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'E-MAIL'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'USERNAME'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'PASSWORD'),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: <Widget>[
                MaterialButton(
                  height: 60,
                  minWidth: 500,

                  color: Colors.pinkAccent,
                  onPressed: () => {},
                  child: Text(_register ? 'REGISTER' : 'LOGIN'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}