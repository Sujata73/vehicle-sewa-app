import 'package:flutter/material.dart';

class Appbar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vechile Sewa'),
        backgroundColor: Colors.orange,
        elevation: 4.0,
      ),
    );
  }
}
class ProfileTabPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("This is profile tab page"),


    );
  }

}
