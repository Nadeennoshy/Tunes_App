import 'package:flutter/material.dart';

void main(){
  runApp(TunesApp());
}

class TunesApp extends StatelessWidget {
  const TunesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}