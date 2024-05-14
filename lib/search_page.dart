import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Icon(Icons.search, color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Search',
                style: TextStyle(
                  color: Color.fromARGB(255, 50, 45, 45),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Search Page content'),
      ),
    );
  }
}
