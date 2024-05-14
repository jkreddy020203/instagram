import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reels page'),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text('this is Reels page, u can watch reels here.'),
      ),
    );
  }
}
