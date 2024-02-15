import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.onClick();
        },
        child: Container(
          // width: double.infinity,
          // height: 60,
          color: tune.tuneColor,
        ),
      ),
    );
  }
}