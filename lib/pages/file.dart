import 'package:flutter/material.dart';

class File extends StatefulWidget {
  const File({super.key});

  @override
  State<File> createState() => _FileState();
}

class _FileState extends State<File> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'File',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'File Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
