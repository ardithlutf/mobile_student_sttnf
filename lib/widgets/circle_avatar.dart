import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(
          'https://miro.medium.com/fit/c/262/262/2*HpJHwDtTLlNagdSvvvaxyQ.jpeg'),
    );
  }
}
