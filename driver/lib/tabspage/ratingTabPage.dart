import 'package:flutter/material.dart';

class Appbar2 extends StatelessWidget {
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
class RatingTabPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("This is Rating tab page"),


    );
  }

}
