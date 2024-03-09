import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget implements GenericView {
  const SettingsView({super.key});

  @override
  String get title => 'Settings';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 60.0),
            child: Center(
              child: Image(
                image: AssetImage('images/ala_hawa_logo.png'),
                height: 150,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.green),
                hintText: 'Enter valid email id as abc@gmail.com',
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.green),
                hintText: 'Enter secure password',
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.cyan), // Set the text color
              ),
              child: const Text(
                'Forgot Password?',
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 250,
            child: FloatingActionButton.extended(
              onPressed: () {},
              label: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'New User? Create Account',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
