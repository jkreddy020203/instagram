import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Add page'),
      ),
      body: const Center(
        child: Text('this is add page, u can add items here.'),
      ),
    );
  }
}
