import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_student_sttnf/blocs/splash_bloc/splash_bloc.dart';
import 'package:mobile_student_sttnf/screens/login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashBloc _splashBloc = SplashBloc();

  @override
  void initState() {
    _splashBloc.add(SetSplash());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: BlocProvider(
          create: (_) => _splashBloc,
          child: BlocListener<SplashBloc, SplashState>(
            listener: (context, state) {
              if (state is SplashLoaded) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage(),
                  ),
                );
              }
            },
            child: _buildSplashWidget(),
          ),
        ),
      ),
    );
  }

  Widget _buildSplashWidget() {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 120),
            child: Image.asset('assets/nf.png'),
          ),
          Text(
            "Mobile Student",
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
