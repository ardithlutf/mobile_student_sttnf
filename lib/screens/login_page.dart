import 'package:flutter/material.dart';
import 'package:mobile_student_sttnf/screens/dashboard_page.dart';

class LoginPage extends StatelessWidget {
  final bool _isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Image.asset('assets/nf.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Center(
                    child: Text(
                      "Mobile Student",
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email, color: Colors.white),
                    labelText: 'Email',
                  ),
                  autocorrect: false,
                  cursorColor: Colors.red,
                  // validator: (_) {
                  //   return !state.isEmailValid ? 'Invalid Email' : null;
                  // },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock, color: Colors.white),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                  autocorrect: false,
                  // validator: (_) {
                  //   return !state.isPasswordValid ? 'Invalid Password' : null;
                  // },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        onPressed: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DashboardPage())),
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: _isButtonPressed
                            ? Colors.white
                            : Colors.indigoAccent,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Center(
                    child: Text(
                      "STT Terpadu Nurul Fikri",
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "www.nurulfikri.ac.id",
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
