import 'package:flutter/material.dart';

class TheaterItem extends StatelessWidget {
  final String name;
  const TheaterItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.expand_more),
        onTap: () {},
      ),
    );
  }
}
