import 'package:flutter/material.dart';

class BioInfo extends StatelessWidget {
  const BioInfo({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class FollowerInfo extends StatelessWidget {
  const FollowerInfo(
      {super.key, required this.number, required this.followerCount});

  final String number;
  final String followerCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        Text(
          followerCount,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class Listless extends StatelessWidget {
  const Listless({super.key, required this.iconess, required this.text});

  final Icon iconess;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: iconess,
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
